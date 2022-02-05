import 'package:flutter/material.dart';

class MenuUrl extends StatelessWidget {
  final String title;
  final IconData icon;

  MenuUrl({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(

      onPressed: () {},
      icon: Icon(icon, size: 22, color: Colors.white70,),
      label: Text(
        this.title,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 22,
        ),
      ),
    );
  }
}
