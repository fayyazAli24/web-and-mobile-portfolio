import 'package:flutter/material.dart';

import '../../constants.dart';
import 'animatedCircularProgressIndicator.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          // check the default padding later
          padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme. titleSmall,
          ),
        ),
        Row(
          children: [
            Expanded(
                child:CustomAnimatedCircularProgressIndicator(percentage: 0.8,label: "flutter",)
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
                child:CustomAnimatedCircularProgressIndicator(percentage: 0.5,label: "Android",)
            ),
            SizedBox(width: defaultPadding,),
            Expanded(
                child:CustomAnimatedCircularProgressIndicator(percentage: 0.4,label: "Firebase",)
            ),
          ],
        ),
      ],
    );

  }
}
