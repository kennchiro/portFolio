import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:testweb/Contact/contactPage.dart';
import 'package:testweb/Project/project_page.dart';
import 'package:testweb/about_me/about_page.dart';
import 'package:testweb/experiences_education/experience_education_page.dart';
import 'package:testweb/home/home_page.dart';
import 'package:testweb/skills/skill_page.dart';

class DrawerMenus {

   static final all = <DrawerMenu>[
    home,
    about,
    competence,
    experience,
    project,
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

    static final project = DrawerMenu(
    icon: Image(
      image: AssetImage('images/work.png'),
    ),
    title: "Projets",
    screen: ProjectPage(),
  );

 static final contact = DrawerMenu(
    icon: Image(
      image:  AssetImage('images/contact.png'),
    ),
    title: "Contact",
    screen: ContactPage(),
  );
 
}
