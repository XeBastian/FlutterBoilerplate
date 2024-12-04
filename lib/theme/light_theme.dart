import 'package:flutter/material.dart';

import '../utils/fonts.dart';
import 'app_colors.dart';
import 'color_scheme.dart';

ThemeData appLightTheme = ThemeData.light().copyWith(
  colorScheme: customColorSchemeLight,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 2,
  ),
  cardColor: Colors.white,
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: Colors.white,
    elevation: 2,
    centerTitle: true,
    iconTheme: IconThemeData(
      color: AppColors.primaryColor,
    ),
    surfaceTintColor: Colors.white,
    titleTextStyle: TextStyle(
      fontFamily: Fonts.quickSandBold,
      fontSize: 18,
      color: AppColors.primaryColor,
    ),
  ),
  scaffoldBackgroundColor: Colors.white,
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontFamily: Fonts.quickSandRegular,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),
);
