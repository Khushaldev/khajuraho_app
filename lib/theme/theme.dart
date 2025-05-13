import 'package:flutter/material.dart';
import 'package:khajuraho/theme/colors.dart';

// app_theme.dart
// Defines the light and dark ThemeData using the AppColors.

class AppTheme {
  // Private constructor to prevent instantiation
  AppTheme._();
  // --- Light Theme ---
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryMedium,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryMedium, // Main interactive color
        onPrimary: AppColors.neutralWhite, // Text/icons on primary color
        secondary: AppColors.primaryLight, // Accent color
        onSecondary: AppColors.primaryDark, // Text/icons on secondary color
        error: AppColors.error,
        onError: AppColors.neutralWhite, // Text/icons on error color
        surface: AppColors.neutralWhite, // Card/dialog backgrounds
        onSurface: AppColors.neutralBlack, // Text/icons on surface
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryMedium, // App bar background
        foregroundColor: AppColors.neutralWhite, // App bar title/icons
        elevation: 4.0,
        iconTheme: IconThemeData(color: AppColors.neutralWhite),
        titleTextStyle: TextStyle(
          color: AppColors.neutralWhite,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        buttonColor: AppColors.primaryMedium, // Default button color
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryMedium, // Button background
          foregroundColor: AppColors.neutralWhite, // Button text/icon
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryMedium,
        foregroundColor: AppColors.neutralWhite,
      ),
      // Define other theme properties like textTheme, inputDecorationTheme etc.
      textTheme: const TextTheme(
        // Define specific text styles if needed
        bodyLarge: TextStyle(color: AppColors.neutralBlack),
        bodyMedium: TextStyle(color: AppColors.neutralBlack),
        // ... other styles
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryMedium),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryMedium, width: 2.0),
        ),
        labelStyle: const TextStyle(color: AppColors.primaryMedium),
      ),
    );
  }

  // --- Dark Theme ---
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark, // Darker primary for overall theme
      scaffoldBackgroundColor: AppColors.backgroundDark,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryLightAccent, // Lighter blue for interactive elements
        onPrimary: AppColors.backgroundDark, // Text/icons on primary color
        secondary: AppColors.primaryMedium, // Accent color
        onSecondary: AppColors.neutralWhite, // Text/icons on secondary color
        error: AppColors.error,
        onError: AppColors.neutralWhite, // Text/icons on error color
        surface: AppColors.primaryDark, // Card/dialog backgrounds (slightly lighter than bg)
        onSurface: AppColors.neutralWhite, // Text/icons on surface
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryDark, // App bar background
        foregroundColor: AppColors.neutralWhite, // App bar title/icons
        elevation: 4.0,
        iconTheme: IconThemeData(color: AppColors.neutralWhite),
        titleTextStyle: TextStyle(
          color: AppColors.neutralWhite,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        buttonColor: AppColors.primaryLightAccent, // Use the lighter accent for buttons
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLightAccent, // Button background
          foregroundColor: AppColors.backgroundDark, // Button text/icon
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryLightAccent,
        foregroundColor: AppColors.backgroundDark,
      ),
      // Define other theme properties like textTheme, inputDecorationTheme etc.
      textTheme: const TextTheme(
        // Define specific text styles if needed
        bodyLarge: TextStyle(color: AppColors.neutralWhite),
        bodyMedium: TextStyle(color: AppColors.neutralWhite),
        // ... other styles
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryLightAccent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryLightAccent, width: 2.0),
        ),
        labelStyle: const TextStyle(color: AppColors.primaryLightAccent),
        hintStyle: TextStyle(color: AppColors.neutralWhite),
        // Ensure helper/error text is visible
        helperStyle: TextStyle(color: AppColors.neutralWhite),
        errorStyle: const TextStyle(color: AppColors.error),
      ),
    );
  }
}
