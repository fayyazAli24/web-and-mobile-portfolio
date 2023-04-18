import 'package:flutter/cupertino.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'AnimatedCounter.dart';
import 'highlight.dart';

class HighlightInfo extends StatelessWidget {
  const HighlightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: ResponsiveSize.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                        counter: AnimatedCounter(
                          value: 10,
                          text: '+',
                        ),
                        label: "practice projects"),
                    HighLight(
                        counter: AnimatedCounter(
                          value: 3,
                          text: '',
                        ),
                        label: "projects"),
                  ],
                ),
                SizedBox(height: defaultPadding/2,),
                Row(children: [
                  HighLight(
                      counter: AnimatedCounter(
                        value: 11,
                        text: '',
                      ),
                      label: "Github repositories"),
                ],)
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                    counter: AnimatedCounter(
                      value: 10,
                      text: '+',
                    ),
                    label: "practice projects"),
                HighLight(
                    counter: AnimatedCounter(
                      value: 3,
                      text: '',
                    ),
                    label: "projects"),
                HighLight(
                    counter: AnimatedCounter(
                      value: 11,
                      text: '',
                    ),
                    label: "Github repositories"),
              ],
            ),
    );
  }
}
