// import 'package:document_scanner_flutter/configs/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

class ImageTypeSheet extends StatelessWidget {
  const ImageTypeSheet({super.key, required this.onSelect});

  final Function(ImageSource imageSource) onSelect;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 200,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const SizedBox(height: kDefaultPadding),
            Container(
              width: 38,
              height: 5,
              decoration: BoxDecoration(
                color: theme.disabledColor,
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    onSelect(ImageSource.gallery);
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.textTheme.bodyLarge!.color!,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(
                            kDefaultBorderRadius,
                          ),
                        ),
                        child: Icon(
                          FeatherIcons.image,
                          size: 35,
                          color: theme.textTheme.bodyLarge!.color,
                        ),
                      ),
                      Text("GALLERY".tr(), style: theme.textTheme.bodyLarge),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () {
                    onSelect(ImageSource.camera);
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: theme.textTheme.bodyLarge!.color!,
                            width: 1.3,
                          ),
                          borderRadius: BorderRadius.circular(
                            kDefaultBorderRadius,
                          ),
                        ),
                        child: Icon(
                          FeatherIcons.camera,
                          size: 35,
                          color: theme.textTheme.bodyLarge!.color,
                        ),
                      ),
                      Text("camera".tr(), style: theme.textTheme.bodyLarge),
                    ],
                  ),
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
