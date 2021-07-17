import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:spring/spring.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillCard extends StatelessWidget {
  final Color colorLongCard;
  final int countLong;
  final String iconLongCard;
  final String nameLongCard;
  final String? iconLongCard2;

  const SkillCard({
    Key? key,
    required this.colorLongCard,
    required this.countLong,
    required this.iconLongCard,
    required this.nameLongCard,
    this.iconLongCard2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Spring.bubbleButton(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150.h,
          width: 250.w,
          color: colorLongCard,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  nameLongCard,
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 8.w,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Image(
                  image:
                      AssetImage('images/' + this.iconLongCard + '_25px.png'),
                  height: 25.w,
                ), 
              ),
              Spacer(),
              FAProgressBar(
                currentValue: this.countLong,
                displayText: "%",
                displayTextStyle: TextStyle(color: Colors.black87),
                backgroundColor: Color(0xFFADAD57).withOpacity(0.9),
                progressColor: Colors.white60,
                size: 18.sp,
                animatedDuration: const Duration(seconds: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
