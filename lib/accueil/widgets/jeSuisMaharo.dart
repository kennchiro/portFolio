import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JeSuisMaharo extends StatelessWidget {
  const JeSuisMaharo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            "Bonjour !",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 12.w,
              fontFamily: 'OpenSansCondensed',
            ),
          ),
    
          //
          Text.rich(
            TextSpan(
              text: 'Je suis ', // default text style
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'OpenSansCondensed',
                fontSize: 14.w,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' Maharo Elie',
                  style: TextStyle(
                    color: Color(0xFFadad57).withOpacity(0.9),
                    fontFamily: 'OpenSansCondensed',
                    fontSize: 14.w,
                  ),
                ),
              ],
            ),
          ),
    
    
          //
           Text.rich(
            TextSpan(
              text: 'Développeur ', // default text style
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'OpenSansCondensed',
                fontSize: 14.w,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Web & Mobile. ',
                  style: TextStyle(
                    color: Color(0xFFadad57).withOpacity(0.9),
                    fontFamily: 'OpenSansCondensed',
                    fontSize: 14.w,
                  ),
                ),
              ],
            ),
          ),
    
        ],
      ),
    );
  }
}
