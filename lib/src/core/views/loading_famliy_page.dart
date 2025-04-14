import 'package:flutter/material.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

class LoadingFamilyPage extends StatelessWidget {
  const LoadingFamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 272,
              child: Image.asset("assets/images/detect.png"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: theme.primaryColor,
                  ),
                ),
                const SizedBox(height: 20, width: 10),
                Text("loading_data".tr()),
              ],
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(height: 83),
    );
  }
}
