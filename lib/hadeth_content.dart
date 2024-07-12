import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project/hadeth_model.dart';


class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = "HadethDetails";

  HadethDetailsScreen({super.key});

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;

    if (verses.isEmpty) {
      loadHadethFile(model.index);
    }

    return Container(
      decoration: BoxDecoration(
          image:
          DecorationImage(image: AssetImage("assets/images/hadeth_logo.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(size: 30, color: Colors.black),
          title: Text(
            model.name,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(18.0),
          margin: EdgeInsets.all(12),
          child: Card(
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14)
            ),
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return Text(
                  verses[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                    fontSize: 25,
                    wordSpacing:4,
                    fontWeight: FontWeight.w400,

                  ),
                );
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ),
    );
  }


  loadHadethFile(int index) async {
    String hadeth = await rootBundle.loadString("assets/files/${index + 1}.txt");


    List<String> hadethLines = hadeth.split("\n");
    verses = hadethLines;
    print(hadethLines);
    setState(() {});
  }
}