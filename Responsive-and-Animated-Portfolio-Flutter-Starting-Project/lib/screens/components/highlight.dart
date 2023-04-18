import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({Key? key, required this.counter, required this.label}) : super(key: key);

  final Widget counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
      child: Row(
        children: [
          counter,
          SizedBox(width: defaultPadding,),
          Text(label,style: Theme.of(context).textTheme.subtitle2,)
        ],
      ),
    );
  }
}
