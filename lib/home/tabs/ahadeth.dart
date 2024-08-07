import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors.dart';
import '../hadeth_details.dart';
import '../hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Text(
          "الأحاديث",
          style:
              GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).dividerColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, HadethDetails.routeName,
                  arguments: allAhadeth[index]);

                },
                child: Text(
                  allAhadeth[index].title,
                  style: GoogleFonts.elMessiri(fontSize: 23),
                  textAlign: TextAlign.center,
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

  void loadHadethFile() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> AhadethContent = value.split("#");

      for (int i = 0; i < AhadethContent.length; i++) {
        List<String> lines = AhadethContent[i].trim().split("\n");
        String title = lines[0];
        lines.removeAt(0);
        List<String> content = lines;
        print(title);
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
      }
      setState(() {});
    });
  }
}
