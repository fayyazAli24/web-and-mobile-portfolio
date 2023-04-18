import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomAnimatedLinearProgressBar extends StatelessWidget {
  const CustomAnimatedLinearProgressBar({Key? key,required this.percentage,required this.label}) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 0.8),
          duration: defaultDuration,
          builder: (context, double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(label,style: TextStyle(color: Colors.white),),
                  Text((percentage * 100).toInt().toString()+"%")
                ],
              ),
              LinearProgressIndicator(
                value: percentage,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
              SizedBox(height: defaultPadding/2),
              // LinearProgressIndicator()
            ],
          )),
    );
  }
}
