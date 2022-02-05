import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JeSuisMaharo extends StatelessWidget {
  const JeSuisMaharo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 8.w,
            ),
          ),
          Text(
            "Je suis Maharo.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 18.w,
            ),
          ),
          Text(
            "Développeur Web & Mobile.",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12.w,
            ),
          ),
        ],
      ),
    );
  }
}
