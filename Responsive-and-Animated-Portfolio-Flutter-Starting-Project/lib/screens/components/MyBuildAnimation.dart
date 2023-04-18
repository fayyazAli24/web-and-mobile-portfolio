import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'buildTexts.dart';
import 'flutterCodeText.dart';

class MyBuildAnimation extends StatelessWidget {
  const MyBuildAnimation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if(!ResponsiveSize.isMobileLarge(context)) FlutterCodedText(),
          if(!ResponsiveSize.isMobileLarge(context))
            SizedBox(
            width: defaultPadding / 2,
          ),
          Text(" I build "),
          BuildText(),
          if(!ResponsiveSize.isMobileLarge(context)) FlutterCodedText(),
          if(!ResponsiveSize.isMobileLarge(context))
            SizedBox(
            width: defaultPadding / 2,
          ),
        ],
      ),
    );
  }
}
