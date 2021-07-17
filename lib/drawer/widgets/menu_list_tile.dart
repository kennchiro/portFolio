import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final String menuName;
  final Widget menuWidget;
  final Function() goTo;

  const MenuListTile({
    Key? key,
    required this.menuName,
    required this.menuWidget,
    required this.goTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: this.menuWidget,
      title: Text(this.menuName,
          style: TextStyle(
            color: Colors.black45,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          )),
      onTap: goTo,
    );
  }
}
