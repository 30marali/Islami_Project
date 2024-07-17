import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  @override
  List<String> content = [];

  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    if (content.isEmpty) {
      loadSura(model.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/default_bg.png'))),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: Text(
              model.name,
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          body: Card(
            margin: EdgeInsets.all(30),
            elevation: 20,
            shadowColor: Colors.black,
            color: Colors.white38,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                " ${content[index]} (${index+1})"  ,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                );
              },
              itemCount: content.length,
            ),
          )),
    );
  }

  loadSura(index) async {
    String suraContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = suraContent.split('\n');
    print(suraLines);
    content = suraLines;
    setState(() {});
  }
}
