import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'MyBuildAnimation.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ResponsiveSize.isMobile(context)?2.5: 3,
      child: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/bg.jpeg",
          fit: BoxFit.cover,
        ),
        Container(
          color: darkColor.withOpacity(0.66),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Discover my Amazing\nArt space!",
                style: ResponsiveSize.isDesktop(context)
                    ? Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)
                    : Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
              ),
              if (ResponsiveSize.isMobileLarge(context))
                SizedBox(
                  height: defaultPadding / 2,
                ),
              MyBuildAnimation(),
              SizedBox(
                height: defaultPadding,
              ),
              if (!ResponsiveSize.isMobileLarge(context))
                ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding * 2,
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: Text(
                      "Explore Now",
                      style: TextStyle(color: darkColor),
                    ))
            ],
          ),
        )
      ]),
    );
  }
}
