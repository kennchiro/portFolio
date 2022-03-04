import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/accueil/widgets/technoTile.dart';

class Android extends StatelessWidget {
  const Android({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(
          child: Column(
            children: [
              Icon(
                Icons.android,
                color: Color(0xFFadad57).withOpacity(0.9),
                size: 70.sp,
              ),
              Text(
                'ANDROID',
                style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'OpenSansCondensed',
                  fontSize: 25.sp,
                ),
              ),
            ],
          ),
        ),
        //
        TechnoTile(techno: 'Flutter'),
        TechnoTile(techno: 'Kotlin'),
        TechnoTile(techno: 'Java'),
      ],
    );
  }
}
