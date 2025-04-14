import 'package:flutter/material.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';

class TMButtonMix extends StatelessWidget {
  const TMButtonMix({
    Key? key,
    required this.title,
    required this.icon,
    this.color = Colors.white,
    this.backgroundColor,
    this.borderColor,
    this.onPressed,
    this.isLoading = false,
    this.padding,
    this.textStyle,
    this.isunderLine = false,
    this.iconSize,
  }) : super(key: key);

  final Widget icon;
  final Color color;
  final Color? backgroundColor;
  final String title;
  final Color? borderColor;
  final Function? onPressed;
  final bool isLoading;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;
  final bool isunderLine;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final backgroundColor = this.backgroundColor ?? theme.primaryColor;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: textStyle ?? theme.textTheme.titleSmall,
        foregroundColor: color,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: theme.disabledColor,
        disabledForegroundColor: Colors.white,
        padding: padding,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
          side:
              borderColor != null
                  ? BorderSide(color: borderColor!)
                  : const BorderSide(color: Colors.transparent, width: 0),
        ),
      ),
      icon:
          isLoading
              ? Container(
                width: 25,
                height: 48,
                alignment: Alignment.center,
                child: const AspectRatio(
                  aspectRatio: 1,
                  child: CircularProgressIndicator(color: Colors.white),
                ),
              )
              : Container(alignment: Alignment.center, height: 48, child: icon),
      onPressed: isLoading || onPressed == null ? null : () => onPressed!(),
      label: Text(title),
    );
  }
}
