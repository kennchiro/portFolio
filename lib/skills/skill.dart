import 'package:flutter/material.dart';
import 'package:testweb/skills/widget/skill_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Skill extends StatelessWidget {
  final List skills = [
    {
      "progress": 95,
      "techno": 'Tech. Web',
      "icon": 'html_5',
      "icon2": 'css3',
      "icon3": 'javascript',
    },
    {
      "progress": 75,
      "techno": 'Php',
      "icon": 'symfony',
      "icon2": 'CI',
      "icon3": 'wordpress',
    },
    {
      "progress": 95,
      "techno": 'MySql',
      "icon": 'mysql',
      "icon2": 'postgresql',
      "icon3": 'android_db',
    },
    {
      "progress": 95,
      "techno": 'Flutter & Dart',
      "icon": 'flutter',
      "icon2": 'dart',
      "icon3": 'google_maps',
    },
    {
      "progress": 90,
      "techno": 'Firebase',
      "icon": 'google_firebase',
      "icon2": 'cloud_firestore',
      "icon3": 'cloud_storage',
    },
    {
      "progress": 70,
      "techno": 'JavaScript',
      "icon": 'react',
      "icon2": 'vue_js',
      "icon3": 'nodejs',
    },
    {
      "progress": 80,
      "techno": 'Java POO',
      "icon": 'java',
      "icon2": 'kotlin',
      "icon3": 'xml',
    },
  ];

  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        decoration: BoxDecoration(
          image: DecorationImage( 
            colorFilter: ColorFilter.srgbToLinearGamma(),
            image: AssetImage(
              "images/skills-bg.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                  fontFamily: 'OpenSansCondensed',
                ),
              ),
              Text(
                "MES COMPETENCES",
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.w,
                  fontFamily: 'OpenSansCondensed',
                ),
              ),

              //
              GridView.builder(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  itemCount: skills.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraints.maxWidth > 920
                        ? 3
                        : constraints.maxWidth >= 500
                            ? 2
                            : 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: constraints.maxWidth > 920
                        ? 4
                        : constraints.maxWidth >= 500
                            ? 2
                            : 3,
                  ),
                  itemBuilder: (_, index) {
                    final skill = skills[index];

                    return Card(
                      elevation: 5,
                      color: Color.fromARGB(31, 0, 0, 0),
                      child: SkillCard(
                        countLong: skill['progress'],
                        iconLongCard: skill['icon'],
                        nameLongCard: skill['techno'],
                        iconLongCard2: skill['icon2'],
                        iconLongCard3: skill['icon3'],
                      ),
                    );
                  }),
            ],
          ),
        ),
      );
    });
  }
}
