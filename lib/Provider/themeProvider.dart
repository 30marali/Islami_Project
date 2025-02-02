import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeProvider() {
   // getLastThemeMode();
  }
  ThemeMode mode = ThemeMode.light;
  bool isLight = true;

  void changeThemeMode(ThemeMode themeMode) async {
    mode = themeMode;
    mode == ThemeMode.light ? isLight = true : isLight = false;
    notifyListeners();

     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

     sharedPreferences.setBool('isDark', mode == ThemeMode.dark);
  }

   void getLastThemeMode() async {
     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     bool isDark = sharedPreferences.getBool('isDark') ?? false;

     isDark ? (mode = ThemeMode.dark) : (mode = ThemeMode.light);

     notifyListeners();
   }
}



