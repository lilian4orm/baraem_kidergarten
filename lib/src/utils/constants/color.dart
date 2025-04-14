import 'package:flutter/material.dart';

const primary = Color(0xff80C4D6);
const secondary = Color(0xff52AABE);
final colorScheme =
    true
        ? ColorScheme.fromSeed(seedColor: primary)
        : const ColorScheme(
          brightness: Brightness.light,
          primary: primary, // Your primary color
          onPrimary: Color(0xff000000), // Black text on primary
          primaryContainer: Color(0xffA8D8E6), // Lighter version of primary
          onPrimaryContainer: Color(
            0xff000000,
          ), // Black text on primary container

          secondary: Color(0xffF4A261), // Complementary orange
          onSecondary: Color(0xff000000), // Black text on secondary
          secondaryContainer: Color(0xffF8C8A0), // Lighter orange
          onSecondaryContainer: Color(
            0xff000000,
          ), // Black text on secondary container

          tertiary: Color(0xff9B5DE5), // Purple accent
          onTertiary: Color(0xffffffff), // White text on tertiary
          tertiaryContainer: Color(0xffC79EF0), // Lighter purple
          onTertiaryContainer: Color(
            0xff000000,
          ), // Black text on tertiary container

          error: Color(0xffE63946), // Vibrant red
          onError: Color(0xffffffff), // White text on error
          errorContainer: Color(0xffF1A8A8), // Lighter red
          onErrorContainer: Color(0xff000000), // Black text on background

          surface: Color(0xffffffff), // White surface
          onSurface: Color(0xff000000), // Black text on surface
          surfaceContainerHighest: Color(0xffE9ECEF), // Light gray variant
          onSurfaceVariant: Color(0xff000000), // Black text on surface variant

          outline: Color(0xffCED4DA), // Border/outline color
          shadow: Color(0xffADB5BD), // Shadow color
        );
MaterialColor createMaterialColor(Color color) {
  final strengths = <double>[.05];
  final swatch = <int, Color>{};
  final r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (final strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}
