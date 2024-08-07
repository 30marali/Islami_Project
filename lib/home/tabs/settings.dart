import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../my_provider.dart';
import '../theme_bottom_sheet.dart';



class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: GoogleFonts.elMessiri(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                   "English",
                  style: GoogleFonts.elMessiri(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            "Theming",
            style: GoogleFonts.elMessiri(
                fontSize: 20, fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).colorScheme.secondary)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.mode == ThemeMode.light ? "Light" : "Dark",
                  style: GoogleFonts.elMessiri(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  void showThemeSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }
}