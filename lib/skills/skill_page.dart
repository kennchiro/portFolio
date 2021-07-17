import 'package:flutter/material.dart';
import 'package:testweb/drawer/my_drawer.dart';
import 'package:testweb/skills/skill.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class SkillPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: MyAppBar(),
     drawer: MyDrawer(),
     body: Skill(),
     bottomNavigationBar: BottomNavBar(),
    );
  }
}