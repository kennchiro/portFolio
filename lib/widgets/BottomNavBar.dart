import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testweb/widgets/icon_button_mouse_region.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButtonMouseRegion(
            socialIcon: FontAwesomeIcons.facebook, 
            initialColor: Colors.grey,
          ),
           IconButtonMouseRegion(
            socialIcon: FontAwesomeIcons.mailBulk,
            initialColor: Colors.grey,
          ),
           IconButtonMouseRegion(
            socialIcon: FontAwesomeIcons.skype, 
            initialColor: Colors.grey,
          ),
           IconButtonMouseRegion(
            socialIcon: FontAwesomeIcons.linkedin, 
            initialColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}


