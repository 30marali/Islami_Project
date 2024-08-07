import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/home/tabs/ahadeth.dart';
import 'package:islamic_app/home/tabs/quran.dart';
import 'package:islamic_app/home/tabs/radio.dart';
import 'package:islamic_app/home/tabs/sebha.dart';
import 'package:islamic_app/home/tabs/settings.dart';
import 'package:islamic_app/my_provider.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(provider.mode == ThemeMode.light
            ? 'assets/images/default_bg.png'
            : 'assets/images/dark_bg.png'),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              selectedItemColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                  label: "الراديو",
                ),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                    label: "التسبيح"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon:
                        ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                    label: "الاحاديث"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                    label: "القران"),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xffB7935F),
                    icon: Icon(Icons.settings),
                    label: ""),
              ]),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
    QuranTab(),
    SettingsTab(),
  ];
}

// body: tabs[selectedIndex],
