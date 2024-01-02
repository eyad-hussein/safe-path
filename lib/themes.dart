import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ColorScheme kLightColorScheme = ThemeData().colorScheme.copyWith(
      primary: const Color(0xFF2093EE),
      onPrimary: const Color(0xFFF8F8F8),
      secondary: const Color(0xFFF8F8F8),
      onSecondary: const Color(0xFF2093EE),
      tertiary: Color(0x4CE2E2E2),
      onTertiary: const Color(0xFFB5B5B5),
      background: const Color(0xFFF8F8F8),
      error: const Color(0xFFFF0000),
    );

final ThemeData kTheme = ThemeData().copyWith(
  textTheme: GoogleFonts.robotoTextTheme(
    ThemeData().textTheme,
  ).copyWith(
    displayLarge: const TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w800,
    ),
    displaySmall: const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: const TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
  ),
);

final ThemeData kLightTheme = kTheme.copyWith(
  colorScheme: kLightColorScheme,
);

final ThemeData kDarkTheme = kTheme.copyWith();
