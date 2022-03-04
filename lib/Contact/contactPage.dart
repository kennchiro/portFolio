
import 'package:flutter/material.dart';
import 'package:testweb/Contact/contact.dart';
import 'package:testweb/widgets/BottomNavBar.dart';
import 'package:testweb/widgets/my_appBar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Contact(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
