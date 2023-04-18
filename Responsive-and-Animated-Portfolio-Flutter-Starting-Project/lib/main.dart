import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/view/homeScreen.dart';
import 'package:flutter_profile/screens/view/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // check theme data later
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
          bodyLarge: TextStyle(color: bodyTextColor),
          bodyMedium: TextStyle(color: bodyTextColor),
            ),
      ),
      home: HomeScreen(),

    );
  }
}
