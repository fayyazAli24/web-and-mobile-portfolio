import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
// import 'package:flutter_profile/screens/components/animatedCircularProgressIndicator.dart';
import 'package:flutter_profile/screens/components/areaInfo.dart';
import 'package:flutter_profile/screens/components/knowledgeText.dart';
import 'package:flutter_profile/screens/components/skills.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'coding.dart';
import 'knowledge.dart';
import 'myInfo.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: SafeArea(
            child: Column(
              children: [
                MyInfo(),
                SizedBox(height: defaultPadding,),
                Column(
                  children: [
                    AreaInfo(title: "Residence", text: "Pakistan"),
                    AreaInfo(title: "City", text: "Karachi"),
                    AreaInfo(title: "Age", text: "21"),
                    Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding/2,),
                    TextButton(
                        onPressed: () {},
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "Download CV",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(
                                width: defaultPadding / 2,
                              ),
                              SvgPicture.asset("assets/icons/download.svg"),
                            ],
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/linkedin.svg"), ),
                          IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/github.svg"), ),
                          Spacer(),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
