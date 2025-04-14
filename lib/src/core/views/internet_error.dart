import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/tm_button_mix.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

class InternetErrorPage extends StatelessWidget {
  const InternetErrorPage({super.key, required this.onPressedRetry});
  final Function? onPressedRetry;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LottieBuilder.asset("assets/animation/no_internet_connection.json"),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "internet_error_msg".tr(),
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 70),
          SizedBox(
            width: 170,
            child: TMButtonMix(
              icon: Icon(
                FeatherIcons.refreshCcw,
                color: theme.textTheme.bodyLarge!.color,
              ),
              backgroundColor: Colors.transparent,
              borderColor: theme.textTheme.bodyLarge!.color,
              textStyle: theme.textTheme.bodyLarge,
              color: theme.textTheme.bodyLarge!.color!,
              title: "retry".tr(),
              onPressed: onPressedRetry,
            ),
          ),
        ],
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lottie/lottie.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/tm_button_mix.dart';
import 'package:super_baraem_kidergarten/src/applying_family/home/presentation/bloc/family_card_cubit.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

class InternetErrorPage extends StatelessWidget {
  const InternetErrorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controllerMeber = context.read<FamilyCardCubit>();
    final theme = Theme.of(context);

    return BlocBuilder<FamilyCardCubit, FamilyCardState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: InkWell(
            onTap: () {
              if (state is MemberStateError) {
                controllerMeber.getFamilyDataUseCase();
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                    "assets/animation/no_internet_connection.json"),
                const SizedBox(height: 8),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "internet_error_msg".tr(),
                      style: theme.textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(height: 70),
                SizedBox(
                  width: 170,
                  child: TMButtonMix(
                      icon: Icon(
                        FeatherIcons.refreshCcw,
                        color: theme.textTheme.bodyLarge!.color,
                      ),
                      backgroundColor: Colors.transparent,
                      borderColor: theme.textTheme.bodyLarge!.color,
                      textStyle: theme.textTheme.bodyLarge,
                      color: theme.textTheme.bodyLarge!.color!,
                      title: "retry".tr(),
                      onPressed: () {
                        controllerMeber.getFamilyDataUseCase();
                      }),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}


 */