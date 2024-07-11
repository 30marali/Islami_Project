import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project/home/tabs/ahadeth.dart';
import 'package:islami_project/home/tabs/quran.dart';
import 'package:islami_project/home/tabs/radio.dart';
import 'package:islami_project/home/tabs/sebha.dart';

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
    return Stack(
      children: [
        Image.asset('assets/images/default_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'اسلامي',
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                selectedIndex = value;
                setState(() {});
              },
              backgroundColor: Color(0xffB7935F),
              type: BottomNavigationBarType.shifting,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
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
  ];
}
