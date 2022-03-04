import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TechnoTile extends StatelessWidget {
  final String techno;

  const TechnoTile({
    Key? key,
    required this.techno,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          color: Color(0xFFadad57).withOpacity(0.9),
          size: 15.sp,
        ),
        SizedBox(
          width: 10.sp,
        ),
        Text(
          techno,
          style: TextStyle(color: Colors.white70, fontSize: 18.sp, fontFamily: 'OpenSansCondensed',),
        ),
      ],
    );
  }
}
