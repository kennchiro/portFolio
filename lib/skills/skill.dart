import 'package:flutter/material.dart';
import 'package:testweb/skills/widget/skill_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Skill extends StatelessWidget {
  Widget build(BuildContext context) {
    return   Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        colorFilter: ColorFilter.srgbToLinearGamma(),
        image: AssetImage(
    "images/skills-bg.jpg",
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
    "COMPETENCES",
    style: TextStyle(
      color: Color(0xFFadad57).withOpacity(0.9),
      fontWeight: FontWeight.bold,
      fontSize: 11.w,
    ),
        ),
    Text(
    "MES COMPETENCES",
    style: TextStyle(
      color: Colors.white60,
      fontWeight: FontWeight.bold,
      fontSize: 11.w,
    ),
        ),
    Expanded(
    child: Container(
      margin: EdgeInsets.only(top: 50.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                SkillCard(
                  colorLongCard: Colors.white12,
                  countLong: 95,
                  iconLongCard: "html_5",
                  nameLongCard: 'TECH. WEB',
                  iconLongCard2: "css3",
                ),
                SkillCard(
                  colorLongCard: Colors.white12,
                  countLong: 80,
                  iconLongCard: "symfony",
                  nameLongCard: 'SYMFONY',
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SkillCard(
                  colorLongCard: Colors.white12,
                  countLong: 89,
                  iconLongCard: "mysql",
                  nameLongCard: 'MYSQL',
                ),
                SkillCard(
                  colorLongCard: Colors.white12,
                  countLong: 95,
                  iconLongCard: "flutter",
                  nameLongCard: 'FLUTTER & DART',
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SkillCard(
                  colorLongCard: Colors.white12,
                  countLong: 90,
                  iconLongCard: "google_firebase_console",
                  nameLongCard: 'FIREBASE',
                ),
                SkillCard(
                  colorLongCard: Colors.white12,
                  countLong: 80,
                  iconLongCard: "vue_js",
                  nameLongCard: 'VUE',
                ),
              ],
            ),
          )
        ],
      ),
    ),
        ),
      ],
    ),
        );
  }
}
