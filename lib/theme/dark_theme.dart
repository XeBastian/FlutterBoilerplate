import 'package:flutter/material.dart';

import '../utils/fonts.dart';
import 'app_colors.dart';
import 'color_scheme.dart';

ThemeData appDarkTheme = ThemeData.dark().copyWith(
  colorScheme: customColorSchemeDark,
  appBarTheme: AppBarTheme(
    scrolledUnderElevation: 2,
    centerTitle: true,
    iconTheme: const IconThemeData(
      color: Colors.blue,
    ),
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TextStyle(
      fontFamily: Fonts.quickSandBold,
      fontSize: 18,
      color: AppColors.primaryColor,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
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
