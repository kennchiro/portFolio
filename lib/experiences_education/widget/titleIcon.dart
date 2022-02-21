import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleIcon extends StatelessWidget {

  final String title;

  const TitleIcon({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          color: Colors.black54,
          size: 10.h,
        ),
        SizedBox(width: 8.h,),
        Flexible(
          child: Text(
            title,
            style: TextStyle(fontSize: 12.h, color: Colors.black87),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
