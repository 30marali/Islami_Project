import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightColor,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFF242424)),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xFF242424)),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xFF242424))),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightColor,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.elMessiri(fontSize: 12),
        unselectedLabelStyle: GoogleFonts.elMessiri(
          fontSize: 12,
        )),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black54, size: 30),
        centerTitle: true),
    colorScheme: ColorScheme(
       brightness: Brightness.light,
        primary: lightColor,
        onPrimary: Colors.black54,
        secondary: Color(0xFFB7935F),
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black),
    dividerColor: Color(0xFFB7935F),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20, fontWeight: FontWeight.w300, color: yellowColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: darkColor,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.white,
          selectedItemColor: yellowColor,
          selectedLabelStyle: GoogleFonts.elMessiri(fontSize: 12),
          unselectedLabelStyle: GoogleFonts.elMessiri(
            fontSize: 12,
          )),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          centerTitle: true),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: darkColor,
        onPrimary: yellowColor,
        secondary: yellowColor,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.white,
        onSurface: darkColor),
    dividerColor: Color(0xFFFACC1D),

  );
}
