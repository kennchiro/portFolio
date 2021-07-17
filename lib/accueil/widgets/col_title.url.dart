import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuUrl extends StatelessWidget {
  final String title;
  final String imagePath;

  MenuUrl({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Image(
          image: AssetImage(this.imagePath),
        ),
        SizedBox(width: 5.w),
        Text(
          this.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.w,
          ),
        ),
      ]),
    ]);
  }
}
