import 'package:flutter/material.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

class TMChip extends StatelessWidget {
  const TMChip({
    Key? key,
    this.icon,
    this.backgroundColor,
    this.borderColor,
    this.padding,
    this.iconSize,
    this.title,
    this.lable,
    this.fontSize,
    this.height,
    this.fontColor,
    this.alignment,
    this.reverce = false,
  }) : super(key: key);

  final IconData? icon;

  final Color? backgroundColor;

  final Color? borderColor;

  final EdgeInsetsGeometry? padding;

  final double? iconSize;
  final String? lable;
  final String? title;
  final bool reverce;
  final double? fontSize;
  final double? height;
  final Color? fontColor;
  final MainAxisAlignment? alignment;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Directionality(
      textDirection: reverce ? TextDirection.ltr : TextDirection.rtl,
      child:
          icon != null
              ? Container(
                height: height ?? 50,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: kDefaultSpacing,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor ?? theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor ?? theme.colorScheme.outline,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: alignment ?? MainAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      size: iconSize ?? 20,
                      color: borderColor ?? theme.textTheme.bodySmall!.color,
                    ),
                    lable != null
                        ? Row(
                          children: [
                            const SizedBox(width: 5),
                            Text(
                              lable?.tr() ?? "",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: borderColor,
                                fontSize: fontSize,
                              ),
                            ),
                          ],
                        )
                        : const SizedBox(),
                  ],
                ),
              )
              : lable != null
              ? Container(
                height: height ?? 50,
                alignment:
                    alignment != null && alignment == MainAxisAlignment.center
                        ? Alignment.center
                        : Alignment.centerRight,
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: backgroundColor ?? theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: borderColor ?? theme.colorScheme.outline,
                  ),
                ),
                child: RichText(
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: theme.textTheme.bodySmall,
                    children: <TextSpan>[
                      TextSpan(
                        text: title,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                        ),
                      ),
                      TextSpan(
                        text: lable ?? "",
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: fontSize,
                          color: fontColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              : const SizedBox(),
    );
  }
}
