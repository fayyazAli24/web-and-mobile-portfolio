import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/components/sideMenu.dart';
// import 'package:flutter_profile/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: ResponsiveSize.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              // todo
              leading: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            ),
      drawer: SideMenu(),
      body: Container(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: Row(
          children: [
            if (ResponsiveSize.isDesktop(context))
              Expanded(
                // now this takes (2+7=9) => 2/9 = 0.22 means 22%
                flex: 2,
                child: SideMenu(),
              ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
                // this part takes 7/9 = 0.78 means 78%
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [...children],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
