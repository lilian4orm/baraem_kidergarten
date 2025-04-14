import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:flutter/material.dart';

class Expandable extends StatefulWidget {
  final Widget? fixedChild;
  final Widget Function(bool isExpanded)? builderHeader;
  final Widget? expandedChild;
  final Widget Function(bool isExpanded)? expandedBuilder;

  final Widget Function(Widget child)? builder;
  final bool defaultIsCollapsed;
  const Expandable(
      {super.key,
      this.fixedChild,
      this.expandedChild,
      this.expandedBuilder,
      required this.builder,
      this.builderHeader,
      this.defaultIsCollapsed = false});

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  late bool isCollapsed = widget.defaultIsCollapsed;
  @override
  Widget build(BuildContext context) {
    final builder = widget.builder ?? (child) => child;
    return GestureDetector(
      onTap: () {
        setState(() {
          isCollapsed = !isCollapsed;
        });
      },
      child: builder(Column(
        children: [
          if (widget.fixedChild != null) widget.fixedChild!,
          if (widget.builderHeader != null) widget.builderHeader!(isCollapsed),
          AnimatedSizeAndFade.showHide(
            sizeDuration: const Duration(milliseconds: 150),
            show: isCollapsed,
            child: widget.expandedChild ?? widget.expandedBuilder!(isCollapsed),
          )
        ],
      )),
    );
  }
}
