import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/network/network_handle_error.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/custom_button.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/custom_text_field.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/cubit/auth_cubit_cubit.dart';
import 'package:super_baraem_kidergarten/src/main_app/presentation/pages/main_navigation.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final bool _obscurePassword = true;
  AuthCubitCubit authCubit = getIt<AuthCubitCubit>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [theme.colorScheme.primaryFixedDim, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.3, 1],
        ),
      ),
      child: BlocConsumer<AuthCubitCubit, AuthCubitState>(
        bloc: authCubit,
        listener: (context, state) {
          if (state.remoteDataStatus == RemoteDataStatus.loaded) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MainNavigationPage(),
              ),
            );
          }
          if (state.remoteDataStatus == RemoteDataStatus.error) {
            NetworkHandler.handdleRequestExceptionMessages(state.dataFailed!);
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 20,
              backgroundColor: Colors.transparent,
            ),
            body: AnimationLimiter(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 600),
                    childAnimationBuilder:
                        (widget) => SlideAnimation(
                          verticalOffset: 50,
                          child: FadeInAnimation(child: widget),
                        ),
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 24.0,
                        ),

                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.colorScheme.primaryContainer,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/icons/logo.png",
                              width: query.width * 0.3,
                            ),
                            const SizedBox(height: 15),
                            Text(appName, style: theme.textTheme.titleLarge),
                            const SizedBox(height: 10),
                            Text(
                              "تسجيل الدخول",
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                      Container(
                        padding: const EdgeInsets.all(24),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: theme.colorScheme.primary.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "البريد الإلكتروني",
                                style: theme.textTheme.bodyLarge,
                              ),
                              const SizedBox(height: 8),
                              CustomTextField(
                                textController: _emailController,
                                hintText: "أدخل البريد الإلكتروني",
                                type: TextFieldType.email,
                                onValidate: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "الرجاء إدخال البريد الإلكتروني";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              Text(
                                "كلمة المرور",
                                style: theme.textTheme.bodyLarge,
                              ),
                              const SizedBox(height: 8),
                              CustomTextField(
                                textController: _passwordController,
                                type: TextFieldType.password,

                                hintText: "أدخل كلمة المرور",

                                onValidate: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "الرجاء إدخال كلمة المرور";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {
                                    // Handle forgotten password
                                  },
                                  child: Text(
                                    "نسيت كلمة المرور؟",
                                    style: TextStyle(
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: CustomButton(
                                  title: "تسجيل الدخول",
                                  loading:
                                      state.remoteDataStatus ==
                                      RemoteDataStatus.loading,
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      // Perform login action

                                      authCubit.loginEvent(
                                        _emailController.text,
                                        _passwordController.text,
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
