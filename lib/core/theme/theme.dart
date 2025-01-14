import 'package:pagination_task/core/theme/app_pallet.dart';
import 'package:pagination_task/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static const _colorScheme = ColorScheme.light(
    surface: AppPallete.backgroundColor,
    onSurface: AppPallete.primary,
    primary: AppPallete.primary,
    primaryContainer: AppPallete.primaryContainer,
    onPrimary: AppPallete.whiteColor,
    error: AppPallete.error,
    onSurfaceVariant: AppPallete.onSurfaceVariant,
    onSecondary: AppPallete.onSecondary,
  );

  static _border([Color color = AppPallete.primary]) => OutlineInputBorder(
        borderSide: BorderSide(
          color: color,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static final _elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppPallete.primary),
      foregroundColor: WidgetStatePropertyAll(AppPallete.whiteColor),
      padding: WidgetStatePropertyAll(
        const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      ),
    ),
  );

  static _outlinedButtonTheme([Color borderColor = AppPallete.primary]) =>
      OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              side: BorderSide(width: 3, color: borderColor),
            ),
          ),
          padding: WidgetStatePropertyAll(
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
        ),
      );

  static final _appBarTheme = AppBarTheme(
    backgroundColor: AppPallete.backgroundColor,
    titleTextStyle: AppTextStyles.headlineMedium.copyWith(
      fontWeight: FontWeight.w800,
    ),
  );

  static final _inputDecorationTheme = InputDecorationTheme(
    contentPadding: const EdgeInsets.all(10),
    enabledBorder: _border(),
    focusedBorder: _border(),
    disabledBorder: _border(AppPallete.primary.withValues(alpha: 0.7)),
    hintStyle: AppTextStyles.headlineSmall.copyWith(
      color: AppPallete.primary.withValues(alpha: 0.7),
    ),
    errorStyle: AppTextStyles.headlineSmall.copyWith(
      color: AppPallete.error,
    ),
    labelStyle: AppTextStyles.headlineSmall.copyWith(
      color: AppPallete.primary,
    ),
  );

  static final _datePickerTheme = DatePickerThemeData(
    backgroundColor: AppPallete.surface,
    cancelButtonStyle: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
          AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
    ),
    confirmButtonStyle: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
          AppTextStyles.bodyMedium.copyWith(fontWeight: FontWeight.bold)),
    ),
    dayStyle: AppTextStyles.bodyMedium,
    yearStyle: AppTextStyles.bodyMedium,
    weekdayStyle: AppTextStyles.bodyMedium,
    headerHelpStyle: AppTextStyles.bodyMedium,
    headerHeadlineStyle: AppTextStyles.bodyMedium,
    rangePickerHeaderHelpStyle: AppTextStyles.bodyMedium,
    rangePickerHeaderHeadlineStyle: AppTextStyles.bodyMedium,
    dividerColor: AppPallete.primary.withValues(alpha: 0.7),
  );

  static final lightThemeMode = ThemeData.light().copyWith(
    colorScheme: _colorScheme,
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    appBarTheme: _appBarTheme,
    inputDecorationTheme: _inputDecorationTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    outlinedButtonTheme: _outlinedButtonTheme(),
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: _inputDecorationTheme,
      textStyle: AppTextStyles.headlineSmall.copyWith(
        color: AppPallete.primary.withValues(alpha: 0.7),
      ),
      menuStyle: MenuStyle(
        maximumSize: WidgetStatePropertyAll(Size(20, 20)),
      ),
    ),
    datePickerTheme: _datePickerTheme,
    textTheme: GoogleFonts.nunitoTextTheme().copyWith(
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      displaySmall: AppTextStyles.displaySmall,
      headlineLarge: AppTextStyles.headlineLarge,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
      labelSmall: AppTextStyles.labelSmall,
      titleLarge: AppTextStyles.titleLarge,
      titleMedium: AppTextStyles.titleMedium,
      titleSmall: AppTextStyles.titleSmall,
    ),
  );
}
