import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spring/spring.dart';

class EducationItem extends StatelessWidget {
  final String dateEduc;
  final String ecole;
  final String cycle;


  const EducationItem({
    Key? key,
    required this.dateEduc,
    required this.ecole,
    required this.cycle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
       slideType: SlideType.slide_in_top,
      delay: const Duration(milliseconds : 20),
          child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFadad57).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(FontAwesomeIcons.graduationCap,
                    color: Colors.white, size: 28),
              ),
            ),
            SizedBox(width: 30.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.dateEduc,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 12.h,
                      ),
                    ),
                    Text(
                      this.ecole,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.h,
                      ),
                    ),
                    Text(
                      this.cycle,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
