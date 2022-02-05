import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getwidget/components/button/gf_icon_button.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:testweb/widgets/global_text.dart';

class ProDrawerHeader extends StatelessWidget {
  const ProDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            TextButton.icon(
                onPressed: () => ProDrawer.of(context).toggle(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                label: Text(
                  'Retour',
                  style: TextStyle(color: Colors.white70, fontSize: 20.sp),
                )),
            SizedBox(
              height: 33.h,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                  radius: 9.w,
                ),
                SizedBox(
                  width: 5.h,
                ),
                Column(
                  children: [
                    GlobalText(
                      str: "Maharo",
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                    Row(
                      children: [
                        Image(
                          image: AssetImage('images/facebook.png'),
                          height: 20.sp,
                        ),
                        Image(
                          image: AssetImage('images/gmail.png'),
                          height: 20.sp,
                        ),
                        Image(
                          image: AssetImage('images/linkedin.png'),
                          height: 20.sp,
                        ),
                        Image(
                          image: AssetImage('images/github.png'),
                          height: 20.sp,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffe8e8e8),
            ),
          ],
        ),
      ),
    );
  }
}
