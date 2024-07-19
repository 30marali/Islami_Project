import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../my_provider.dart';
import 'my_theme_data.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      color: provider.mode == ThemeMode.light
          ? Colors.white
          : Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Light",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.mode == ThemeMode.light
                              ? Theme.of(context).primaryColor
                              : Colors.white,
                        )),
                    Spacer(),
                    Icon(
                      Icons.done,
                      color: provider.mode == ThemeMode.light
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              endIndent: 50,
              indent: 50,
              color: Theme.of(context).primaryColor,
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.dark);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Dark",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: provider.mode == ThemeMode.light
                                ? Colors.black54
                                : MyThemeData.yellowColor)),
                    Spacer(),
                    Icon(
                      Icons.done,
                      color: provider.mode == ThemeMode.light
                          ? Colors.black54
                          : MyThemeData.yellowColor,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}