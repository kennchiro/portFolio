import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:testweb/about_me/about_page.dart';
import 'package:testweb/experiences_education/experience_education_page.dart';
import 'package:testweb/home_page/home_page.dart';
import 'package:testweb/skills/skill_page.dart';

class DrawerMenus {

   static final all = <DrawerMenu>[
    home,
    about,
    competence,
    experience,
    projet,
    contact,
  ];

  static final home = DrawerMenu(
    icon: Image(
      image: AssetImage('images/home.png'),
    ),
    title: "Home",
    screen: MyHomePage(),
  );

  static final about = DrawerMenu(
    icon: Image(
      image: AssetImage('images/about.png'),
    ),
    title: "A Propos",
    screen: AboutPage(),
  );

  static final competence = DrawerMenu(
    icon: Image(
      image: AssetImage('images/development_skillx.png'),
    ),
    title: "Compétences",
    screen: SkillPage(),
  );

  static final experience = DrawerMenu(
    icon: Image(
      image:  AssetImage('images/job.png'),
    ),
    title: "Expérience",
    screen: ExperienceEducationPage(),
  );

    static final projet = DrawerMenu(
    icon: Image(
      image: AssetImage('images/work.png'),
    ),
    title: "Projets",
    screen: null,
  );

 static final contact = DrawerMenu(
    icon: Image(
      image:  AssetImage('images/contact.png'),
    ),
    title: "Contact",
    screen: null,
  );
 
}
