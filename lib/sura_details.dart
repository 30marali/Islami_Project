import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/sura_model.dart';
import 'package:provider/provider.dart';

import 'my_provider.dart';

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
    var provider = Provider.of<MyProvider>(context);
    if (content.isEmpty) {
      loadSura(model.index);
    }

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  provider.mode == ThemeMode.light
                      ? 'assets/images/default_bg.png'
                      : 'assets/images/dark_bg.png'
              ),)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              model.name,
              style: Theme.of(context).textTheme.bodyLarge,


            ),
          ),
          body: Card(
            margin: EdgeInsets.all(30),
            elevation: 20,
            shadowColor: Colors.black,
            color: Theme.of(context).colorScheme.primary,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                " ${content[index]} (${index+1})"  ,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
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
