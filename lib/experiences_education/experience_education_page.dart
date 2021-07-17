import 'package:flutter/material.dart';
import 'package:testweb/drawer/my_drawer.dart';
import 'package:testweb/experiences_education/experience_education.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class ExperienceEducationPage extends StatelessWidget {
  const ExperienceEducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: MyAppBar(),
     drawer: MyDrawer(),
     body: ExperienceEducation(),
     bottomNavigationBar: BottomNavBar(),
    );
  }
}