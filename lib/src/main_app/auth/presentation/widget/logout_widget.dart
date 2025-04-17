import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/functions/functions.dart';
import 'package:super_baraem_kidergarten/src/core/network/network_handle_error.dart';
import 'package:super_baraem_kidergarten/src/core/sheet/alert_dialog.dart';
import 'package:super_baraem_kidergarten/src/main_app/auth/presentation/cubit/auth_cubit_cubit.dart';
import 'package:super_baraem_kidergarten/src/utils/injector.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubitCubit>(),
      child: BlocConsumer<AuthCubitCubit, AuthCubitState>(
        listener: (context, state) {
          if (state.remoteDataStatus == RemoteDataStatus.error) {
            NetworkHandler.handdleRequestExceptionMessages(state.dataFailed!);
          }
          if (state.remoteDataStatus == RemoteDataStatus.loaded) {
            logoutUseCase();
          }
        },
        builder: (context, state) {
          return IconButton(
            icon: const Icon(LucideIcons.logOut),
            onPressed: () {
              showTMDialogDesition(
                context,
                title: "تسجيل الخروج",
                icon: LucideIcons.logOut,
                onAgree: () {
                  context.read<AuthCubitCubit>().logoutEvent();
                },
                msg: const Text("هل تريد تسجيل الخروج من التطبيق؟"),
                iconColor: Colors.red,
              );
            },
          );
        },
      ),
    );
  }
}
