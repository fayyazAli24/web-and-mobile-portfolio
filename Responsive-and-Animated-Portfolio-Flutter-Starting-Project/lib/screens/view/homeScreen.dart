import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/screens/components/highlightInfo.dart';
import 'package:flutter_profile/screens/components/homeBanner.dart';
import 'package:flutter_profile/screens/components/projectInfo.dart';
import 'package:flutter_profile/screens/view/main_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../components/MyBuildAnimation.dart';
import '../components/flutterCodeText.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HighlightInfo(),
      ProjectInfo()
    ]);
  }
}


