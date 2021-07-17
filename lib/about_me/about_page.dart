import 'package:flutter/material.dart';
import 'package:testweb/about_me/about.dart';
import 'package:testweb/drawer/my_drawer.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class AboutPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: MyAppBar(),
     drawer: MyDrawer(),
     body: About(),
     bottomNavigationBar: BottomNavBar(),
    );
  }
}