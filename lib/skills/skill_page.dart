import 'package:flutter/material.dart';
import 'package:testweb/skills/skill.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class SkillPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: MyAppBar(),
     body: Skill(),
     bottomNavigationBar: BottomNavBar(),
    );
  }
}