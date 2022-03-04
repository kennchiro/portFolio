import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:spring/spring.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      leading: TextButton.icon(
        onPressed: () => ProDrawer.of(context).toggle(),
        icon: Icon(
          Icons.more_vert_rounded,
          color: Colors.white70,
        ),
        label: Text(
          "MENU",
          style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSansCondensed',
              fontSize: 18.sp),
        ),
      ),
      // leading: IconButton(onPressed: ()=> ProDrawer.of(context).toggle(), icon: Icon(Icons.more_vert_rounded,),),
      iconTheme: IconThemeData(color: Colors.white60),
      backgroundColor: Colors.black,
      elevation: 0,
      actions: [
        Spring.bubbleButton(
          child: Image(
            image: AssetImage('images/m_90px.png'),
            height: 35.sp,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size(50, 50);
}
