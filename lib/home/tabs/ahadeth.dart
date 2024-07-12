import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project/hadeth_content.dart';

import '../../colors.dart';
import '../../hadeth_model.dart';

class AhadethTab extends StatelessWidget {
  AhadethTab({super.key});

  List<String> hadethNames = [
    "الحد يث الأول",
    "الحد يث الثاني",
    "الحد يث الثالث",
    "الحد يث الرابع",
    "الحد يث الخامس",
    "الحد يث السادس",
    "الحد يث السابع",
    "الحد يث الثامن",
    "الحد يث التاسع",
    "الحد يث العاشر",
    "الحد يث الحادي عشر",
    "الحد يث الثاني عشر",
    "الحد يث الثالث عشر",
    "الحد يث الرابع عشر",
    "الحد يث الخامس عشر",
    "الحديث السادس عشر",
    "الحديث السابع عشر",
    "الحديث الثامن عشر",
    "الحديث التاسع عشر",
    "الحد يث العشرون",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/qur2an_screen_logo.png",
          height: 227,
        ),
        Divider(
          thickness: 3,
          color: AppColors.primaryColor,
        ),
        Text(
          "Sura Namess",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Divider(
          thickness: 3,
          color: AppColors.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Icon(
                    Icons.star_border_purple500,
                    color: AppColors.primaryColor,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Divider(
                    thickness: 2,
                    color: AppColors.primaryColor,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.star_border_purple500,
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                      arguments: HadethModel(hadethNames[index], index));
                },
                child: Text(
                  hadethNames[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              );
            },
            itemCount: hadethNames.length,
          ),
        )
      ],
    );
  }
}
