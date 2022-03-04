import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:spring/spring.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillCard extends StatelessWidget {
  final int countLong;
  final String iconLongCard;
  final String nameLongCard;
  final String? iconLongCard2;
  final String? iconLongCard3;

  const SkillCard({
    Key? key,
    required this.countLong,
    required this.iconLongCard,
    required this.nameLongCard,
    this.iconLongCard2,
    this.iconLongCard3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(
                nameLongCard,
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 8.w,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'OpenSansCondensed',
                ),
              ),
              trailing: Wrap(
                direction: Axis.vertical,
                alignment: WrapAlignment.center,
                children: [
                  Tooltip(
                    message: this.iconLongCard,
                    child: Image(
                      image:
                          AssetImage('images/' + this.iconLongCard + '_25px.png'),
                      height: 25.w,
                    ),
                  ),
                  //
                  Tooltip(
                    message: this.iconLongCard2!,
                    child: Image(
                      image: AssetImage(
                          'images/' + this.iconLongCard2! + '_25px.png'),
                      height: 25.w,
                    ),
                  ),
                  //
                 Tooltip(
                   message: this.iconLongCard3,
                    child: Image(
                      image: AssetImage(
                          'images/' + this.iconLongCard3! + '_25px.png'),
                      height: 25.w,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            FAProgressBar(
              currentValue: this.countLong,
              displayText: "%",
              displayTextStyle: TextStyle(
                color: Colors.black87,
                fontFamily: 'OpenSansCondensed',
              ),
              backgroundColor: Color(0xFFADAD57).withOpacity(0.9),
              progressColor: Colors.white60,
              size: 18.sp,
              animatedDuration: const Duration(seconds: 3),
            ),
          ],
        ),
      ),
    );
  }
}
