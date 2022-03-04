import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:testweb/drawer%20copy/drawer_menu.dart';

class MenuUrl extends StatelessWidget {
  final String title;
  final IconData icon;
  final int goToNum;

  MenuUrl({
    Key? key,
    required this.title,
    required this.icon,
    required this.goToNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
         ProDrawer.of(context).setPage(DrawerMenus.all[goToNum]);
      },
      icon: Icon(
        icon,
        size: 22.sp,
        color: Colors.white70,
      ),
      label: Text(
        this.title,
        style: TextStyle(
          color: Colors.white70,
          fontSize: 25.sp,
          fontFamily: 'OpenSansCondensed',
        ),
      ),
    );
  }
}
