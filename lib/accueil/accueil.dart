import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spring/spring.dart';
import 'package:testweb/accueil/widgets/col_title.url.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Container(
              height: 1.sh,
              width: 1.sw,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
        colorFilter: ColorFilter.srgbToLinearGamma(),
        image: AssetImage(
          "images/intro-bg.jpg",
        ),
        fit: BoxFit.fill,
                ),
              ),
              child: Spring.slide(
                delay: const Duration(milliseconds: 200),
                slideType: SlideType.slide_in_left,
                child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BIENVENUE TOUT LE MONDE",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 10.w,
            ),
          ),
          Text(
            "Je suis Maharo Elie.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.w,
            ),
          ),
          Text(
            "Développeur Web & Mobile.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.w,
            ),
          ),
        ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20.sp),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MenuUrl(
            title: "A propos",
            imagePath: 'images/about.png',
   
          ),
          SizedBox(width: 10),
          MenuUrl(
            title: "Mes Oeuvres",
            imagePath: 'images/work.png',

          ),
          SizedBox(width: 10),
          MenuUrl(
            title: "Contacte",
            imagePath: 'images/contact.png',

          ),
        ],
                ),
              ),
            ),
          ),
        ],
                ),
              ),
            );
  }
}
