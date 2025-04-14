import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

import '../../utils/utils.dart';
import '../widgets/tm_button_mix.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    required this.title,
    required this.onPressedRetry,
  });
  final String title;
  final Function onPressedRetry;
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(LucideIcons.info),
                const SizedBox(width: kDefaultSpacing),
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
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
      ),
    );
  }
}
