import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/local_db/local_db.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/skeleton.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/data/model/login_model.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/widget/logout_widget.dart';
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
    with SingleTickerProviderStateMixin {
  late ProfileCubit profileCubit;

  late TabController _tabController;
  LoginModel? userData;

  @override
  void initState() {
    super.initState();
    profileCubit = getIt<ProfileCubit>();
    userData = LocalDatabase.getLoginCredential();
    _tabController = TabController(length: 2, vsync: this);
    profileCubit.getProfileData();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocProvider.value(
      value: profileCubit,
      child: Scaffold(
        backgroundColor: colorScheme.surface,
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state.remoteDataStatus == RemoteDataStatus.loading) {
              return _buildSkeletonLoading(context);
            }

            return CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                // Flexible App Bar with Profile Header
                SliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height * 0.3,
                  pinned: true,
                  stretch: true,
                  backgroundColor: colorScheme.surface,
                  actions: const [LogoutWidget()],
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.zero,
                    expandedTitleScale: 1.0,
                    background: _buildProfileHeader(context, state),
                  ),
                  bottom: TabBar(
                    controller: _tabController,
                    labelColor: colorScheme.primary,
                    unselectedLabelColor: colorScheme.onSurfaceVariant,
                    indicatorColor: colorScheme.primary,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: const [
                      Tab(text: "المعلومات"),
                      Tab(text: "الإجراءات"),
                    ],
                  ),
                ),

                // Tab Content
                SliverFillRemaining(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      // Information Tab
                      _buildInformationTab(context, state),

                      // Actions Tab
                      _buildActionsTab(context),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Image upload functionality
          },
          backgroundColor: colorScheme.primaryContainer,
          foregroundColor: colorScheme.onPrimaryContainer,
          tooltip: "تعديل الصورة",
          child: const Icon(LucideIcons.camera),
        ),
      ),
    );
  }

  Widget _buildSkeletonLoading(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverAppBar(
          expandedHeight: size.height * 0.3,
          pinned: true,
          stretch: true,
          backgroundColor: theme.colorScheme.surface,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SkeletonLoading(
                w: 40,
                h: 40,
                borderRadius: BorderRadius.circular(20),
                backgroundColor: theme.colorScheme.surfaceContainerHighest
                    .withOpacity(0.6),
              ),
            ),
          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.primaryContainer,
                    theme.colorScheme.surface,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    // Avatar skeleton
                    SkeletonLoading(
                      w: size.width * 0.3,
                      h: size.width * 0.3,
                      borderRadius: BorderRadius.circular(size.width * 0.15),
                      backgroundColor: theme.colorScheme.surfaceContainerHighest
                          .withOpacity(0.6),
                    ),
                    const SizedBox(height: 16),
                    // Name skeleton
                    SkeletonLoading(
                      w: size.width * 0.6,
                      h: 24,
                      borderRadius: BorderRadius.circular(12),
                      backgroundColor: theme.colorScheme.surfaceContainerHighest
                          .withOpacity(0.6),
                    ),
                    const SizedBox(height: 12),
                    // Badge skeleton
                    SkeletonLoading(
                      w: size.width * 0.3,
                      h: 32,
                      borderRadius: BorderRadius.circular(16),
                      backgroundColor: theme.colorScheme.surfaceContainerHighest
                          .withOpacity(0.6),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: SkeletonLoading(
              h: 48,
              w: double.infinity,
              borderRadius: BorderRadius.zero,
              backgroundColor: theme.colorScheme.surfaceContainerHighest
                  .withOpacity(0.6),
            ),
          ),
        ),

        // Skeleton content
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultSpacing),
            child: Column(
              children: List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: SkeletonLoading(
                    h: 80,
                    w: double.infinity,
                    borderRadius: BorderRadius.circular(16),
                    backgroundColor: theme.colorScheme.surfaceContainerHighest
                        .withOpacity(0.6),
                  ),
                ),
              ),
            ),
          ),
        ),

        // Skeleton grid
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultSpacing),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1,
              children: List.generate(
                4,
                (index) => SkeletonLoading(
                  w: double.infinity,
                  h: double.infinity,
                  borderRadius: BorderRadius.circular(24),
                  backgroundColor: theme.colorScheme.surfaceContainerHighest
                      .withOpacity(0.6),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileHeader(BuildContext context, ProfileState state) {
    final theme = Theme.of(context);
    final query = MediaQuery.sizeOf(context);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primaryContainer,
            theme.colorScheme.surface,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),

            // Avatar and school badge
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                _profileImage(query, theme, state),

                // School badge
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: _schooleImage(theme, state),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Student name
            Text(
              state.profileModel?.account.account_name ?? "",
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),

            const SizedBox(height: 8),

            // Class badge
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "الشعبة : ${state.profileModel?.account.account_division_current?.leader ?? ""}",
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSecondaryContainer,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _schooleImage(ThemeData theme, ProfileState state) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: const EdgeInsets.all(4),
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl:
              "${state.contentUrl}${state.profileModel?.account.school?.school_img}",
          fit: BoxFit.cover,
          placeholder:
              (context, url) => SkeletonLoading(
                w: double.infinity,
                h: double.infinity,
                backgroundColor: theme.colorScheme.surfaceContainerHighest
                    .withOpacity(0.6),
              ),
          errorWidget:
              (context, url, error) =>
                  Icon(LucideIcons.school, color: theme.colorScheme.primary),
        ),
      ),
    );
  }

  Hero _profileImage(Size query, ThemeData theme, ProfileState state) {
    return Hero(
      tag: 'profile_image',
      child: Container(
        width: query.width * 0.3,
        height: query.width * 0.3,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: theme.colorScheme.surface, width: 4),
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.shadow.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl:
                "${state.contentUrl}${state.profileModel?.account.account_img}",
            fit: BoxFit.cover,
            placeholder:
                (context, url) => SkeletonLoading(
                  w: double.infinity,
                  h: double.infinity,
                  backgroundColor: theme.colorScheme.surfaceContainerHighest
                      .withOpacity(0.6),
                ),
            errorWidget:
                (context, url, error) => Container(
                  color: theme.colorScheme.primary.withOpacity(0.2),
                  child: Icon(
                    LucideIcons.user,
                    color: theme.colorScheme.primary,
                    size: 40,
                  ),
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildInformationTab(BuildContext context, ProfileState state) {
    return AnimationLimiter(
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultSpacing,
          vertical: 24,
        ),
        physics: const BouncingScrollPhysics(),
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(milliseconds: 375),
          childAnimationBuilder:
              (widget) => SlideAnimation(
                horizontalOffset: 50.0,
                child: FadeInAnimation(child: widget),
              ),
          children: [
            _buildInfoCard(
              context,
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
              context,
              "الميلاد",
              userData?.accountBirthday != null
                  ? fromISOToDate(userData!.accountBirthday.toString())
                  : "",
              LucideIcons.calendar,
            ),
            _buildInfoCard(
              context,
              "الهاتف",
              userData?.accountMobile ?? "",
              LucideIcons.phone,
            ),
            _buildInfoCard(
              context,
              "الايميل",
              userData?.accountEmail ?? "",
              LucideIcons.mail,
            ),
            _buildInfoCard(
              context,
              "الاصدار",
              packageInfo?.version ?? "",
              LucideIcons.info,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionsTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultSpacing),
      child: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 375),
            childAnimationBuilder:
                (widget) => SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(child: widget),
                ),
            children: [
              _buildActionCard(
                context,
                "المستمسكات",
                "assets/icons/kinder/paper.png",
                LucideIcons.fileText,
                const AttachDocumentsPage(),
              ),
              _buildActionCard(
                context,
                "الحسابات",
                "assets/icons/kinder/book.png",
                LucideIcons.wallet,
                const AttachDocumentsPage(),
              ),
              _buildActionCard(
                context,
                "اتصل بنا",
                "assets/icons/kinder/bog.png",
                LucideIcons.phoneCall,
                const AttachDocumentsPage(),
              ),
              _buildActionCard(
                context,
                "الملاحظات",
                "assets/icons/kinder/plus.png",
                LucideIcons.clipboardList,
                null,
                onTap: () {
                  // Notes functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context,
    String title,
    String value,
    IconData icon,
  ) {
    if (value.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: theme.colorScheme.outlineVariant, width: 1),
      ),
      color: theme.colorScheme.surface,
      child: ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: theme.colorScheme.primary, size: 24),
        ),
        title: Text(
          title,
          style: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            value,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context,
    String title,
    String assetPath,
    IconData icon,
    Widget? destination, {
    VoidCallback? onTap,
  }) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
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
        splashColor: theme.colorScheme.primary.withOpacity(0.1),
        highlightColor: theme.colorScheme.primary.withOpacity(0.05),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                theme.colorScheme.surfaceContainerHighest,
                theme.colorScheme.surface,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: theme.colorScheme.onPrimaryContainer,
                  size: 28,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
