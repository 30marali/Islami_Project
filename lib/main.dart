import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/home/home.dart';
import 'package:islamic_app/home/my_theme_data.dart';
import 'package:islamic_app/my_provider.dart';
import 'package:islamic_app/sura_details.dart';
import 'package:provider/provider.dart';

import 'home/hadeth_details.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MyProvider(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
