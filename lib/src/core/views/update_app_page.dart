import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_store/open_store.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/tm_button.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

class UpdateAppPage extends StatelessWidget {
  const UpdateAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/svg/update.svg"),
            const SizedBox(height: kDefaultPadding, width: double.infinity),
            SizedBox(
              width: double.infinity,
              child: Text(
                "update_app_hint_title".tr(),
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "update_app_hint_desc".tr(),
                style: theme.textTheme.bodyLarge!.copyWith(),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: kDefaultPadding, width: double.infinity),
            TMButton(
              title: "update_app".tr(),
              onPressed: () {
                OpenStore.instance.open(
                  appStoreId: '6447293797', // AppStore id of your app for iOS

                  androidAppBundleId:
                      'com.ht.iq', // Android app bundle package name
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
