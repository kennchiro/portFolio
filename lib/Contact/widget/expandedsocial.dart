import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testweb/Contact/widget/socialTile.dart';

class ExpandedSocial extends StatelessWidget {
  ExpandedSocial({Key? key}) : super(key: key);

  final List<Map<dynamic, dynamic>> socials = [
    {
      'socialIcon': FontAwesomeIcons.facebook,
      'socialName': 'Facebook',
      'socialUser': 'Kenchiro',
      'link': 'http://',
    },
    {
      'socialIcon': FontAwesomeIcons.envelope,
      'socialName': 'Gmail',
      'socialUser': 'razafimaharolazaniainaelie@gmail.com',
      'link': 'http://',
    },
    {
      'socialIcon': FontAwesomeIcons.skype,
      'socialName': 'Skype',
      'socialUser': 'Maharo Elie',
      'link': 'http://',
    },
    {
      'socialIcon': FontAwesomeIcons.linkedinIn,
      'socialName': 'LinkedIn',
      'socialUser': 'Maharo Elie',
      'link': 'http://',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: ((context, constraints) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage("images/profile1-bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Où vous pouvez me trouver",
                    style: TextStyle(
                      color: Color(0xFFadad57).withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: 'OpenSansCondensed',
                    ),
                  ),

                  //
                  GridView.builder(
                      padding: EdgeInsets.all(8.0),
                      shrinkWrap: true,
                      itemCount: socials.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: constraints.maxWidth > 920
                            ? 3
                            : constraints.maxWidth >= 500
                                ? 2
                                : 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 4,
                      ),
                      itemBuilder: (_, index) {
                        final social = socials[index];
                        return SocialTile(
                            socialIcon: social['socialIcon'],
                            socialName: social['socialName'],
                            socialUser: social['socialUser']);
                      })
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
