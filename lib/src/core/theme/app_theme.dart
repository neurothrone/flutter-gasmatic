import 'package:flutter/material.dart';

import '../constants/constants.dart';

/// Provides a centralized app theme definition.
///
/// This class encapsulates the main theme used throughout the app to
/// ensure consistency in design and appearance. The theme is based on
/// the dark theme with custom overrides.
class AppTheme {
  /// The primary theme used across the app.
  ///
  /// This theme is based on the dark theme, with custom modifications,
  /// such as the scaffold background color and the app bar appearance.
  static ThemeData theme = ThemeData.dark().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: AppConstants.darkestBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppConstants.darkBlue,
      shadowColor: AppConstants.darkBlue,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      elevation: AppDimensions.elevation,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppConstants.darkBlue,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: AppConstants.darkerGold,
      elevation: AppDimensions.elevation,
      shape: CircleBorder(),
      iconSize: 35.0,
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: AppConstants.darkBlue,
      indicatorColor: AppConstants.darkGold,
      shadowColor: AppConstants.darkBlue,
      surfaceTintColor: Colors.transparent,
      elevation: AppDimensions.elevation,
      labelTextStyle: MaterialStatePropertyAll(
        TextStyle(color: AppConstants.darkGold),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppConstants.darkestBlue,
      elevation: AppDimensions.elevation,
      showDragHandle: true
    ),
  );
}
