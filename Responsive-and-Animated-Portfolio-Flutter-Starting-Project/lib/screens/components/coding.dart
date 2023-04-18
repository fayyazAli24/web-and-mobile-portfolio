import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/components/animatedLinearProgressBar.dart';

class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        CustomAnimatedLinearProgressBar(percentage: 0.8,label: "dart",),
        CustomAnimatedLinearProgressBar(percentage: 0.65,label: "Java",),
        CustomAnimatedLinearProgressBar(percentage: 0.65,label: "C++",),
        CustomAnimatedLinearProgressBar(percentage: 0.55,label: "Python",),
      ],
    );
  }
}
