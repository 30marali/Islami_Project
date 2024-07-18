import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project/home/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethScreen';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/images/default_bg.png",
        ),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            model.title,
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
                model.content[index],
                textDirection: TextDirection.rtl,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                ),
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ),
    );
  }
}
