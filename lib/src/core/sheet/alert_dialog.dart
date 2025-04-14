import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:open_store/open_store.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

Future<dynamic> showTMDialog({
  required String title,
  String? msg,
  required IconData icon,
  Color? iconColor,
  Function()? onDissmiss,
  Widget? view,
  bool? barrierDismissible,
}) {
  final theme = Theme.of(navigatorKey.currentContext!);
  final query = MediaQuery.sizeOf(navigatorKey.currentContext!);

  // Default icon color if not provided
  final effectiveIconColor = iconColor ?? theme.colorScheme.primary;

  return showDialog(
    barrierDismissible: barrierDismissible ?? true,
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: query.width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header with icon
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: iconColor?.withAlpha(50),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Center(
                  child: Icon(icon, size: 45, color: effectiveIconColor),
                ),
              ),

              // Title
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 20,
                  bottom: 10,
                ),
                child: Text(
                  title.tr(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: effectiveIconColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Content
              view ??
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    child: Text(
                      msg?.tr() ?? "",
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),

              // Button
              Padding(
                padding: const EdgeInsets.all(24),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      navigatorKey.currentState!.pop();
                      if (onDissmiss != null) onDissmiss();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: iconColor?.withAlpha(200),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "BACK".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<dynamic> showTMDialogDesition(
  BuildContext context, {
  required String title,
  Widget? msg,
  required IconData icon,
  Color? iconColor,
  bool isDissmis = true,
  required Function() onAgree,
  String? confirmText,
  String? cancelText,
}) {
  final theme = Theme.of(context);
  final query = MediaQuery.sizeOf(context);

  // Default icon color if not provided
  final effectiveIconColor = iconColor ?? theme.colorScheme.primary;

  return showDialog(
    barrierDismissible: isDissmis,
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: query.width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header with icon
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Center(
                  child: Icon(icon, size: 45, color: effectiveIconColor),
                ),
              ),

              // Title
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 20,
                  bottom: 10,
                ),
                child: Text(
                  title.tr(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: effectiveIconColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Content
              msg != null
                  ? Padding(
                    padding: const EdgeInsets.fromLTRB(24, 10, 24, 20),
                    child: msg,
                  )
                  : const SizedBox(height: 10),

              // Buttons
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  children: [
                    // Confirm button
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            onAgree();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            (confirmText ?? "confirm").tr(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    // Cancel button
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () => Navigator.pop(context),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: theme.colorScheme.primary,
                            side: BorderSide(
                              color: theme.colorScheme.primary,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            (cancelText ?? "BACK").tr(),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<dynamic> showUpdateDialog() {
  final theme = Theme.of(navigatorKey.currentContext!);
  final query = MediaQuery.sizeOf(navigatorKey.currentContext!);

  return showDialog(
    barrierDismissible: false,
    context: navigatorKey.currentContext!,
    builder: (BuildContext context) {
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: query.width * 0.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.shadow.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header with SVG image
              Container(
                padding: const EdgeInsets.symmetric(vertical: 24),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withOpacity(0.3),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/svg/update.svg",
                    width: query.width * 0.3,
                  ),
                ),
              ),

              // Title
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 24,
                  bottom: 8,
                ),
                child: Text(
                  "update_app_hint_title".tr(),
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Description
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 8,
                ),
                child: Text(
                  "update_app_hint_desc".tr(),
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),

              // Update button
              Padding(
                padding: const EdgeInsets.all(24),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      OpenStore.instance.open(
                        appStoreId:
                            '6447293797', // AppStore id of your app for iOS
                        androidAppBundleId:
                            'com.ht.iq', // Android app bundle package name
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: theme.colorScheme.primary,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      "update_app".tr(),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
