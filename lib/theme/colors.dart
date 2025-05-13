import 'package:flutter/material.dart';

// app_colors.dart
// Defines the color constants extracted from the provided image palette
// and includes additional standard UI colors.

class AppColors {
  // Private constructor to prevent instantiation
  AppColors._();
  // --- Primary Blues ---
  // Darkest blue, suitable for dark backgrounds or primary dark elements
  static const Color primaryDark = Color(0xFF1A4D7A);
  // Medium blue, good for primary actions or light theme app bars
  static const Color primaryMedium = Color(0xFF2E6AA2);
  // Lightest blue, suitable for accents or highlighting in dark mode
  static const Color primaryLight = Color(0xFFA8D4F0);
  // A slightly brighter light blue for better visibility as accent in dark mode
  static const Color primaryLightAccent = Color(0xFF8BCBF4);

  // --- Neutrals ---
  // Pure white, for text on dark backgrounds or light theme backgrounds
  static const Color neutralWhite = Color(0xFFFFFFFF);
  // Pure black, for text on light backgrounds
  static const Color neutralBlack = Color(0xFF000000);
  // Very dark blue, suitable for dark theme backgrounds
  static const Color backgroundDark = Color(0xFF0D273E);
  // Off-white, an alternative for light theme backgrounds if pure white is too stark
  static const Color backgroundLight = Color(0xFFF5FAFF); // Slightly bluish white

  // --- Greys ---
  // Light Greys (for light theme dividers, disabled states, subtle text)
  static const Color greyLight = Color(0xFFF0F0F0); // Very light grey
  static const Color greyMediumLight = Color(0xFFD5D8DC); // Light grey
  static const Color greyMedium = Color(0xFFADB5BD); // Medium grey

  // Dark Greys (for dark theme dividers, disabled states, subtle text)
  static const Color greyMediumDark = Color(0xFF6C757D); // Medium-dark grey
  static const Color greyDark = Color(0xFF495057); // Dark grey
  static const Color greyVeryDark = Color(0xFF343A40); // Very dark grey (alt surface)

  // --- Semantic Colors (Standard) ---
  // Success color for positive feedback
  static const Color success = Color(0xFF28A745); // Green
  static const Color successLight = Color(0xFFD4EDDA); // Light green background
  static const Color successDark = Color(0xFF155724); // Dark green text/icon

  // Warning color for cautionary messages
  static const Color warning = Color(0xFFFFC107); // Yellow/Amber
  static const Color warningLight = Color(0xFFFFF3CD); // Light yellow background
  static const Color warningDark = Color(0xFF856404); // Dark yellow text/icon

  // Error color for errors and negative feedback
  static const Color error = Color(0xFFDC3545); // Red
  static const Color errorLight = Color(0xFFF8D7DA); // Light red background
  static const Color errorDark = Color(0xFF721C24); // Dark red text/icon

  // Info color for informational messages
  static const Color info = Color(0xFF17A2B8); // Teal/Cyan
  static const Color infoLight = Color(0xFFD1ECF1); // Light cyan background
  static const Color infoDark = Color(0xFF0C5460); // Dark cyan text/icon
}
