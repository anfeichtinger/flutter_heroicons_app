import 'package:flutter/material.dart';

/// Primary Swatch was generated from HeroIcons purple - other colors from Tailwind CSS (v3.0) - July 2022
///
/// https://tailwindcss.com/docs/customizing-colors

const int _primaryColor = 0xFF8B5CF6; // HeroIcons purple
const MaterialColor primarySwatch = MaterialColor(_primaryColor, <int, Color>{
  50: Color(0xFFece4fe),
  100: Color(0xFFd8c9fc),
  200: Color(0xFFc5adfb),
  300: Color(0xFFb292f9),
  400: Color(0xFF9e77f8),
  500: Color(_primaryColor),
  600: Color(0xFF5d1cf2),
  700: Color(0xFF420bc0),
  800: Color(0xFF2c0780),
  900: Color(0xFF160440),
});

const int _textColor = 0xFF64748B;
const MaterialColor textSwatch = MaterialColor(_textColor, <int, Color>{
  50: Color(0xFFF8FAFC), // slate-50
  100: Color(0xFFF1F5F9), // slate-100
  200: Color(0xFFE2E8F0), // slate-200
  300: Color(0xFFCBD5E1), // slate-300
  400: Color(0xFF94A3B8), // slate-400
  500: Color(_textColor), // slate-500
  600: Color(0xFF475569), // slate-600
  700: Color(0xFF334155), // slate-700
  800: Color(0xFF1E293B), // slate-800
  900: Color(0xFF0F172A), // slate-900
});

final ThemeData lightTheme = ThemeData(
  primarySwatch: primarySwatch,
  brightness: Brightness.light,
  scaffoldBackgroundColor: textSwatch.shade200,
  backgroundColor: textSwatch.shade200,
  cardColor: const Color(0xFFFAFAFA), // neutral-50
  bottomAppBarColor: Colors.white,
  dividerColor: const Color(0x1C000000),
  highlightColor: primarySwatch.shade500.withOpacity(.2),
  fontFamily: 'Nunito',
  textTheme: TextTheme(
    headline1: TextStyle(
      color: textSwatch.shade700,
      fontWeight: FontWeight.w300,
      fontFamily: 'Nunito',
      fontSize: 98,
    ),
    headline2: TextStyle(
      color: textSwatch.shade600,
      fontWeight: FontWeight.w300,
      fontFamily: 'Nunito',
      fontSize: 62,
    ),
    headline3: TextStyle(
      color: textSwatch.shade700,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 50,
    ),
    headline4: TextStyle(
      color: textSwatch.shade700,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 36,
    ),
    headline5: TextStyle(
      color: textSwatch.shade600,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 26,
    ),
    headline6: TextStyle(
      color: textSwatch.shade700,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito',
      fontSize: 22,
    ),
    subtitle1: TextStyle(
      color: textSwatch.shade700,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 18,
    ),
    subtitle2: TextStyle(
      color: textSwatch.shade600,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito',
      fontSize: 16,
    ),
    bodyText1: TextStyle(
      color: textSwatch.shade700,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 18,
    ),
    bodyText2: TextStyle(
      color: textSwatch.shade500,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 16,
    ),
    button: TextStyle(
      color: textSwatch.shade500,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito',
      fontSize: 16,
    ),
    caption: TextStyle(
      color: textSwatch.shade500,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 14,
    ),
    overline: TextStyle(
      color: textSwatch.shade500,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 12,
    ),
  ),
);

final ThemeData darkTheme = lightTheme.copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF18181B), // zinc-900
  backgroundColor: const Color(0xFF18181B), // zinc-900
  cardColor: const Color(0xFF262626), // neutral-800
  bottomAppBarColor: const Color(0xFF27272A), // zinc-800
  dialogBackgroundColor: const Color(0xFF262626), // neutral-800
  dividerColor: const Color(0x1CFFFFFF),
  highlightColor: primarySwatch.shade500.withOpacity(.2),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: textSwatch.shade200,
      fontWeight: FontWeight.w300,
      fontFamily: 'Nunito',
      fontSize: 98,
    ),
    headline2: TextStyle(
      color: textSwatch.shade300,
      fontWeight: FontWeight.w300,
      fontFamily: 'Nunito',
      fontSize: 60,
    ),
    headline3: TextStyle(
      color: textSwatch.shade200,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 50,
    ),
    headline4: TextStyle(
      color: textSwatch.shade200,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 36,
    ),
    headline5: TextStyle(
      color: textSwatch.shade300,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 26,
    ),
    headline6: TextStyle(
      color: textSwatch.shade200,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito',
      fontSize: 22,
    ),
    subtitle1: TextStyle(
      color: textSwatch.shade200,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 18,
    ),
    subtitle2: TextStyle(
      color: textSwatch.shade300,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito',
      fontSize: 16,
    ),
    bodyText1: TextStyle(
      color: textSwatch.shade300,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 18,
    ),
    bodyText2: TextStyle(
      color: textSwatch.shade200,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 16,
    ),
    button: TextStyle(
      color: textSwatch.shade400,
      fontWeight: FontWeight.w500,
      fontFamily: 'Nunito',
      fontSize: 16,
    ),
    caption: TextStyle(
      color: textSwatch.shade400,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 14,
    ),
    overline: TextStyle(
      color: textSwatch.shade400,
      fontWeight: FontWeight.normal,
      fontFamily: 'Nunito',
      fontSize: 12,
    ),
  ),
);
