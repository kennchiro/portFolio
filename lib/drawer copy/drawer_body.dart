import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/widgets/global_text.dart';
import 'drawer_menu.dart';

class DrawerBody extends StatelessWidget {
   const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Column(
      children: DrawerMenus.all
          .map(
            (item) => ListTile(
              leading: item.icon,
              title: GlobalText(
                str: item.title,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
              onTap: () {
                ProDrawer.of(context).setPage(item);
              },
            ),
          )
          .toList(),
    ),
    SizedBox(
      height: 10.h,
    ),
    Padding(
      padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
      child: Divider(
        thickness: 1.h,
        color: const Color(0xffe8e8e8),
      ),
    ),
    SizedBox(
      height: 30.h,
    ),
      ],
    );
  }
}
