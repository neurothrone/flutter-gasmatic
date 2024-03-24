import 'package:flutter/material.dart';

class AppConstants {
  const AppConstants._();

  // region Strings

  static const String appTitle = "GasMatic";

  static const String envFilePath = "assets/env/.env";

  // endregion

  // region Misc

  /// Animation duration (in milliseconds)
  static const int animationDuration = 300;

  // endregion

  // region Colors

  static const darkestBlue = Color(0xFF000814);
  static const darkBlue = Color(0xFF001D3D);
  static const lightBlue = Color(0xFF003566);
  static const darkGold = Color(0xFFFFC300);
  static const darkerGold = Color(0xFFB58B02);
  static const lightGold = Color(0xFFFFD60A);

  static Color darkestGold = darken(darkerGold, 0.15);

  /// Represents a color used for destructive actions.
  /// Chosen to be closer to "indian-red" in order to provide good contrast
  /// against black backgrounds and harmonize with a blue color theme
  // static const Color destructive = Color(0xFFCD5C5C);
  static final Color destructive = Colors.deepOrange.shade900;

  /// A linear gradient of the Primary Blue and Secondary Blue colors
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      darkBlue,
      lightBlue,
    ],
  );

  // endregion

  // region Utility

  /// Darkens the provided [color] by a specified [amount].
  ///
  /// The function works by converting the RGB color to HSL format, then
  /// reducing its lightness. The lightness is decreased by the provided
  /// [amount], which defaults to `0.1` (or 10%). The resulting color is
  /// then converted back to RGB format.
  ///
  /// Parameters:
  /// - [color]: The color to be darkened.
  /// - [amount]: The amount to reduce the lightness of the color. It ranges
  /// from `0.0` to `1.0`. The default is `0.1`.
  ///
  /// Returns:
  /// A new `Color` object that represents the darkened color.
  ///
  /// Example:
  /// ```dart
  /// final newColor = darken(Colors.blue, 0.2);
  /// ```
  static Color darken(Color color, [double amount = .1]) {
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (hsl.lightness - amount).clamp(
        0.0,
        1.0,
      ),
    );

    return hslDark.toColor();
  }

// endregion
}
