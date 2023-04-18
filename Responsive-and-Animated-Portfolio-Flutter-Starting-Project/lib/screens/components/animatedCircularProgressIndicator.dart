import 'package:flutter/material.dart';

import '../../constants.dart';

class   CustomAnimatedCircularProgressIndicator extends StatelessWidget {
  const CustomAnimatedCircularProgressIndicator(
      {Key? key, required this.percentage, required this.label})
      : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage),
              duration: defaultDuration,
              builder: (context, double value, child) =>
                  Stack(fit: StackFit.expand, children: [
                    CircularProgressIndicator(
                      value: value,
                      backgroundColor: darkColor,
                      color: primaryColor,
                    ),
                    Center(
                      child: Text(
                        (value * 100).toInt().toString() + "%",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    )
                  ])),
        ),
        SizedBox(height: defaultPadding/2,),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
