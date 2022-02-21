import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceTextTile extends StatelessWidget {
  final String serviceText;

  const ServiceTextTile({
    Key? key,
    required this.serviceText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
     return Text(
        this.serviceText,
        style: TextStyle(
          fontSize:  constraint.maxWidth < 920 ?  13.h : 9.h,
          color: Colors.black54,
        ),
        textAlign: TextAlign.justify,
      );
    });
  }
}
