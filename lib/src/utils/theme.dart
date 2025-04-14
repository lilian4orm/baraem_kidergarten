import 'package:flutter/material.dart';

import 'constants/color.dart';

getTheme(BuildContext context) {
  final theme = ThemeData(
    primarySwatch: createMaterialColor(primary),
    fontFamily: 'Somar',
    useMaterial3: true,
  );

  return theme.copyWith(brightness: Brightness.light, colorScheme: colorScheme);
}
