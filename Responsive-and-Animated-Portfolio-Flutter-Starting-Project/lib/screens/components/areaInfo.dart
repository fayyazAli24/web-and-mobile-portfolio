import 'package:flutter/material.dart';
class AreaInfo extends StatelessWidget {
  String title,text;
   AreaInfo({Key? key,required this.title, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(color: Colors.white),),
          Text(text,style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}
