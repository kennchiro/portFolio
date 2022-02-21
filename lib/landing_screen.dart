import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:testweb/home/home_page.dart';
import 'drawer copy/drawer_body.dart';
import 'drawer copy/drawer_header.dart';

class LandingScreenDrawer extends StatelessWidget {
  const LandingScreenDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
      return ProDrawer(
        xOffset: constraint.maxWidth > 780 ? 400 : 170,
        drawerHeader: ProDrawerHeader(),
        drawerBackgroundColor: Colors.black,
        drawerBody: DrawerBody(),
        initialPage: MyHomePage(),
        drawerAnimationDuration: Duration(milliseconds: 300),
      );
    });
  }
}
