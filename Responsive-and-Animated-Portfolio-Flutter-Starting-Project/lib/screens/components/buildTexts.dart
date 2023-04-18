import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class BuildText extends StatelessWidget {
  const BuildText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText('responsive web applications',
            speed: Duration(milliseconds: 60)),
        TyperAnimatedText('responsive mobile application',
            speed: Duration(milliseconds: 60)),
      ],
    );
  }
}
