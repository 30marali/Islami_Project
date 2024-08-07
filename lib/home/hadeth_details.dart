import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/home/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../my_provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'HadethScreen';

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
            provider.mode == ThemeMode.light
                ? 'assets/images/default_bg.png'
                : 'assets/images/dark_bg.png'
        ),
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            model.title,
            style:Theme.of(context).textTheme.bodyLarge,
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
                model.content[index],
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
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
