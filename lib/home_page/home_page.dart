import 'package:flutter/material.dart';
import 'package:testweb/accueil/accueil.dart';
import 'package:testweb/drawer/my_drawer.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: MyDrawer(),
      body: Accueil(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
