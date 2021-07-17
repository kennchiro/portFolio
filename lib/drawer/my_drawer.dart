import 'package:flutter/material.dart';
import 'package:testweb/about_me/about_page.dart';
import 'package:testweb/drawer/widgets/menu_list_tile.dart';
import 'package:testweb/drawer/widgets/simple_profile.dart';
import 'package:testweb/experiences_education/experience_education_page.dart';
import 'package:testweb/home_page/home_page.dart';
import 'package:testweb/skills/skill_page.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SimpleProfile(),
          SizedBox(height: 9),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuListTile(
                  menuName: "Accueil",
                  menuWidget: Image(
                    image: AssetImage('images/home.png'),
                  ), goTo: () { 
                     Route route =
                          MaterialPageRoute(builder: (c) => MyHomePage());
                      Navigator.pushReplacement(context, route);
                   },
                ),
                MenuListTile(
                  menuName: "A propos",
                  menuWidget: Image(
                    image: AssetImage('images/about.png'),
                  ), goTo: () {  
                     Route route =
                          MaterialPageRoute(builder: (c) => AboutPage());
                      Navigator.pushReplacement(context, route);
                  },
                ),
                MenuListTile(
                  menuName: "Compétences",
                  menuWidget: Image(
                    image: AssetImage('images/development_skillx.png'),
                  ), goTo: () { 
                     Route route =
                          MaterialPageRoute(builder: (c) => SkillPage());
                      Navigator.pushReplacement(context, route);
                   },
                ),
                MenuListTile(
                  menuName: "Expérience",
                  menuWidget: Image(
                    image: AssetImage('images/job.png'),
                  ), goTo: () { 
                     Route route =
                          MaterialPageRoute(builder: (c) => ExperienceEducationPage ());
                      Navigator.pushReplacement(context, route);
                   },
                ),
                MenuListTile(
                  menuName: "Projets",
                  menuWidget: Image(
                    image: AssetImage('images/work.png'),
                  ), goTo: () {  },
                ),
                MenuListTile(
                  menuName: "Contacte",
                  menuWidget: Image(
                    image: AssetImage('images/contact.png'),
                  ), goTo: () {  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
