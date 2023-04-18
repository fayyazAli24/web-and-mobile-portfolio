import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xff242439),
        child: Column(
          children: [
            Spacer(flex: 2,),
            CircleAvatar(
                radius: 50,
                backgroundImage:
                AssetImage("assets/images/fayyaz.jpg")
            ),
            Spacer(),
            Text(
              "Muhammad Fayyaz Ali",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                  fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(flex: 2,)
          ],
        ),
      ),
    );
  }
}
