import 'package:flutter/material.dart';
import 'package:spring/spring.dart';
import 'package:testweb/about_me/widget/about_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Column2 extends StatelessWidget {
  final double heightC2;

  const Column2({
    required this.heightC2,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: heightC2,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          child: Spring.fadeIn(
            delay: const Duration(seconds: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "SERVICES",
                  style: TextStyle(
                    color: Color(0xFFadad57).withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                  ),
                ),
                //
                ServiceAbout(
                  service: 'APPLICATION MOBILE',
                  serviceText:
                      'Lorem ipsum Sit Ut eu Ut commodo velit ea et off, Lorem ipsum Sit Ut eu Ut commodo velit ea et off, Lorem ipsum Sit Ut eu Ut commodo velit ea et off',
                  iconS: Icons.android,
                ),

                SizedBox(
                  height: 15,
                ),

                ServiceAbout(
                  service: 'APPLICATION WEB',
                  serviceText:
                      'Lorem ipsum Sit Ut eu Ut commodo velit ea et off, Lorem ipsum Sit Ut eu Ut commodo velit ea et off, Lorem ipsum Sit Ut eu Ut commodo velit ea et off',
                  iconS: Icons.web,
                ),

                SizedBox(
                  height: 15,
                ),

                ServiceAbout(
                  service: 'CONCEPTION UI/UX WEB/MOBILE',
                  serviceText:
                      'Lorem ipsum Sit Ut eu Ut commodo velit ea et off, Lorem ipsum Sit Ut eu Ut commodo velit ea et off, Lorem ipsum Sit Ut eu Ut commodo velit ea et off',
                  iconS: Icons.code,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
