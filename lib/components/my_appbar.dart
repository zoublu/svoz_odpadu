import 'package:flutter/material.dart';
import 'package:svoz_odpadu/constants/constants.dart';
import 'package:svoz_odpadu/settings_page.dart';
import 'package:svoz_odpadu/constants/global_var.dart';
import 'package:svoz_odpadu/components/icon_on_current_page.dart';
import 'package:svoz_odpadu/components/about_app_dialog.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: kDBackgroundColor,
      actions: [
        if (currentPage == 'home_page')
          IconOnCurrentPage(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
          ),
        if (currentPage == 'settings')
          IconOnCurrentPage(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const AboutAppDialog();
                },
              );
            },
            icon: const Icon(Icons.info),
          ),
      ],
      //bottom: PreferredSize(child: TextWidget(), preferredSize: Size.fromHeight(4.0)),
      title: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: [
            WidgetSpan(
              child: Text(
                'KALENDÁŘ SVOZU ODPADU',
                style: TextStyle(
                    fontFamily: kDFontFamilyHeader,
                    fontSize: 18,
                    color: kDColorTextColorBackground),
              ),
            ),
            WidgetSpan(
              child: Text(
                'Město Dolní Kounice',
                style: TextStyle(
                    fontFamily: kDFontFamilyHeader,
                    fontSize: 13,
                    color: kDColorTextColorBackground),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
