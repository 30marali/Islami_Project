import 'package:flutter/material.dart';
import 'package:islami_project/home/home.dart';
import 'package:islami_project/sura_details.dart';

import 'home/hadeth_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetails.routeName: (context) => HadethDetails(),

      },
    );
  }
}
