import 'package:flutter/material.dart';
import 'package:super_baraem_kidergarten/src/utils/constants/const.dart';

class TMButton extends StatelessWidget {
  const TMButton({
    Key? key,
    required this.title,
    this.icon,
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

  final IconData? icon;
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

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle:
            textStyle ??
            (isunderLine
                ? theme.textTheme.bodySmall!.copyWith(
                  shadows: [Shadow(color: color, offset: const Offset(0, -5))],
                  decoration: TextDecoration.underline,
                  decorationColor: color,
                  decorationThickness: 1,
                )
                : theme.textTheme.titleSmall),
        foregroundColor: isunderLine ? Colors.transparent : color,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: const Color(0xff87909F),
        disabledForegroundColor: Colors.white,
        padding: icon != null ? EdgeInsets.zero : null,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          side:
              borderColor != null
                  ? BorderSide(color: borderColor!)
                  : const BorderSide(color: Colors.transparent, width: 0),
          borderRadius: BorderRadius.circular(kDefaultBorderRadius),
        ),
      ),
      onPressed:
          isLoading
              ? () {}
              : onPressed == null
              ? null
              : () => onPressed!(),
      child:
          isLoading
              ? const SizedBox(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  ],
                ),
              )
              : Container(
                alignment: Alignment.center,
                height: 48,
                child:
                    icon != null && title.isEmpty
                        ? Icon(icon, color: color, size: iconSize)
                        : Text(title, maxLines: 1),
              ),
    );
  }
}
