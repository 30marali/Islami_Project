import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../my_provider.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 1;

  int currentPhraseIndex = 0;

  final List<String> phrases = [
    'سبحان الله',
    'الحمد لله',
    'لا إله إلا الله',
    'الله أكبر'
  ];

  void incrementCounter() {
    setState(() {
      if (counter < 33) {
        counter++;
      } else {
        counter = 1; // Reset counter after reaching 33
        currentPhraseIndex = (currentPhraseIndex + 1) % phrases.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              provider.mode == ThemeMode.light
                  ? 'assets/images/head_sebha_logo.png'
                  : 'assets/images/head_sebha_dark.png',
              width: 200,
              height: 105,
            ),
            Image.asset(
              provider.mode == ThemeMode.light
                  ? 'assets/images/body_sebha_logo.png'
                  : 'assets/images/body_sebha_dark.png',
              width: 232,
              height: 234,
            ),
            SizedBox(height: 50),
            Text(
              'عدد التسبيحات',
              style: GoogleFonts.elMessiri(
                fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize: Size(80, 50)),
              child: Text(
                '$counter',
                style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: incrementCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(100, 50)
              ),
              child: Text(
                phrases[currentPhraseIndex],
                style: GoogleFonts.elMessiri(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
