import 'package:flutter/material.dart';
import 'package:spring/spring.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Column1 extends StatelessWidget {
  final double heightC1;

  const Column1({
    required this.heightC1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        height: heightC1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/profile-bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
          child: Spring.fadeIn(
            delay: const Duration(seconds: 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "RESUME",
                  style: TextStyle(
                    color: Color(0xFFadad57).withOpacity(0.9),
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "Ingénieur en Informatique passionné de nouvelles technologies, je me suis spécialisé en développement natif avec Flutter ou Kotlin. Mon objectif est d’enrichir mon expérience sur le développement d’application mobile et web",
                          style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.normal,
                            fontSize: 22.sp,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ),
                //
                MaterialButton(
                  color: Colors.black45,
                  onPressed: () {},
                  child: Text(
                    "TELECHARGER CV",
                    style: TextStyle(color: Colors.white, fontSize: 15.sp),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
