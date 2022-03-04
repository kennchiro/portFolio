import 'package:flutter/material.dart';

class SocialTile extends StatelessWidget {
  final IconData socialIcon;
  final String socialName;
  final String socialUser;

  const SocialTile({
    Key? key,
    required this.socialIcon,
    required this.socialName,
    required this.socialUser
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white10,
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            socialIcon,
            color: Colors.white70,
            size: 60,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  socialName,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontFamily: 'OpenSansCondensed',
                  ),
                ),
                 Text(
                  socialUser,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontFamily: 'OpenSansCondensed',
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
