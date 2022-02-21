import 'package:flutter/material.dart';
import 'package:testweb/Project/project.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Project(),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Colors.white10,
    );
  }
}
