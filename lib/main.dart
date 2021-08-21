import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photography_website/constants/colours.dart';
import 'package:photography_website/screens/home/home_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'constants/translations.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mmoke's Photography",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: mainColourBage,
        accentColor: accentColourPink,
        fontFamily: 'Antonio',
        textTheme: const TextTheme(
          // textTheme: GoogleFonts.script
          // const TextTheme(

          headline1: TextStyle(fontFamily: "Style Script", fontSize: 72.0),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 20.0),
        ),
      ),
      initialRoute: '/home',
      translations: MyTranslations(),
      locale: const Locale('en', 'en_US'),
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}
