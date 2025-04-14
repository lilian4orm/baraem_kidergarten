import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/core/sheet/alert_dialog.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/page/login_page.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/cubit/profile_cubit.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/profile/presentation/pages/attachement/attachement_documents_page.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({super.key});

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile>
    with AutomaticKeepAliveClientMixin {
  late ProfileCubit profileCubit;
  LoginModel? userData;
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileCubit = getIt<ProfileCubit>();
    userData = LocalDatabase.getLoginCredential();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final query = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);

    return BlocProvider.value(
      value: profileCubit,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.colorScheme.primaryFixedDim, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.3, 1],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "الملف الشخصي",
              style: TextStyle(color: theme.colorScheme.onSurface),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(LucideIcons.logOut),
                onPressed: () {
                  showTMDialogDesition(
                    context,
                    title: "تسجيل الخروج",
                    msg: const Text("هل انت متأكد من تسجيل الخروج"),
                    icon: LucideIcons.logOut,

                    onAgree: () {
                      logoutUseCase();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          body: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              if (state.remoteDataStatus == RemoteDataStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              }

              return Column(
                children: [
                  // Profile Header Card
                  Container(
                    height: query.width * 0.4,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    margin: const EdgeInsets.symmetric(
                      horizontal: kDefaultSpacing,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: theme.colorScheme.primaryContainer,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Profile Image
                        GestureDetector(
                          onTap: () {
                            // Image edit functionality
                          },
                          child: Container(
                            width: query.width * 0.25,
                            height: query.width * 0.25,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: theme.colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: CachedNetworkImage(
                                imageUrl:
                                    " _.contentUrl +_.mainData['account']['account_img']",
                                fit: BoxFit.cover,
                                placeholder:
                                    (context, url) =>
                                        const CircularProgressIndicator(),
                                errorWidget:
                                    (context, url, error) =>
                                        const Icon(LucideIcons.user),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // User Info
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "الطالب",
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                userData?.accountName ?? "",
                                style: theme.textTheme.titleLarge,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primaryContainer,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Text(
                                  "الشعبة : ${state.profileModel?.account.account_division_current?.leader ?? ""}",
                                  style: TextStyle(
                                    color: theme.colorScheme.onPrimaryContainer,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // School Logo
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl:
                                "_.contentUrl_.mainData['account']['school']['school_logo']",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                            placeholder:
                                (context, url) => const SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: CircularProgressIndicator(),
                                ),
                            errorWidget:
                                (context, url, error) =>
                                    const Icon(LucideIcons.school),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Information Cards
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultSpacing,
                    ),
                    child: Column(
                      children: [
                        _buildInfoCard(
                          theme,
                          "الصف",
                          state
                                  .profileModel
                                  ?.account
                                  .account_division_current
                                  ?.class_name ??
                              "",
                          LucideIcons.graduationCap,
                        ),
                        _buildInfoCard(
                          theme,
                          "الميلاد",
                          userData?.accountBirthday != null
                              ? fromISOToDate(
                                userData!.accountBirthday.toString(),
                              )
                              : "",
                          LucideIcons.calendar,
                        ),
                        _buildInfoCard(
                          theme,
                          "الهاتف",
                          userData?.accountMobile ?? "",
                          LucideIcons.phone,
                        ),
                        _buildInfoCard(
                          theme,
                          "الايميل",
                          userData?.accountEmail ?? "",
                          LucideIcons.mail,
                        ),
                        _buildInfoCard(
                          theme,
                          "الاصدار",
                          packageInfo?.version ?? "",
                          LucideIcons.info,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Action Buttons Grid
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultSpacing,
                      ),
                      child: AnimationLimiter(
                        child: GridView.count(
                          shrinkWrap: true,
                          crossAxisCount: 2,
                          physics: const BouncingScrollPhysics(),
                          childAspectRatio: 1.5,
                          mainAxisSpacing: 16.0,
                          crossAxisSpacing: 16.0,
                          children: [
                            _buildActionButton(
                              context,
                              "المستمسكات",
                              "assets/icons/kinder/paper.png",
                              const AttachDocumentsPage(),
                            ),
                            _buildActionButton(
                              context,
                              "الحسابات",
                              "assets/icons/kinder/book.png",
                              const AttachDocumentsPage(),
                            ),
                            _buildActionButton(
                              context,
                              "اتصل بنا",
                              "assets/icons/kinder/bog.png",
                              const AttachDocumentsPage(),
                            ),
                            _buildActionButton(
                              context,
                              "تعديل الصورة",
                              "assets/icons/kinder/plus.png",
                              null,
                              onTap: () {
                                // pickImage functionality
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    ThemeData theme,
    String title,
    String value,
    IconData icon,
  ) {
    if (value.isEmpty) return const SizedBox.shrink();

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: theme.colorScheme.primary, size: 22),
          const SizedBox(width: 12),
          Text(
            "$title:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onSurface.withOpacity(0.8),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    String title,
    String assetPath,
    Widget? destination, {
    VoidCallback? onTap,
  }) {
    final theme = Theme.of(context);

    return AnimationConfiguration.staggeredGrid(
      position: destination != null ? 0 : 1,
      duration: const Duration(milliseconds: 375),
      columnCount: 2,
      child: SlideAnimation(
        verticalOffset: 50.0,
        child: ScaleAnimation(
          child: GestureDetector(
            onTap:
                onTap ??
                () {
                  if (destination != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => destination),
                    );
                  }
                },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 5,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(assetPath, height: 48),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
