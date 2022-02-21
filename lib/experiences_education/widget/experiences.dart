import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/experiences_education/widget/experience_item.dart';
import 'package:testweb/experiences_education/widget/outilsDetails.dart';
import 'package:testweb/experiences_education/widget/titleIcon.dart';

class Experience extends StatelessWidget {
  final double heightExpe;

  const Experience({
    Key? key,
    required this.heightExpe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "EXPERIENCES",
              style: TextStyle(
                color: Color(0xFFadad57).withOpacity(0.9),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //DRCF-HM
            ExperienceItem(
              dateExp: 'Novembre 2018 - Février 2019',
              entreprise: 'DRCF-HM',
              ville: 'Fianarantsoa - Anjoma ',
              contextJob:
                  " « Conception et réalisation d'une application de Gestion du courrier » ",
              listWidgetOutil: Column(
                children: [
                  OutilsDetails(
                    iconLangage: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Image.asset('images/java_20px.png'),
                        Image.asset('images/desktop_20px.png'),
                        Image.asset('images/mysql_20px.png')
                      ],
                    ),
                    listTile: Column(
                      children: [
                        TitleIcon(title: "Langage de programmation : JAVA"),
                        TitleIcon(title: 'Base de donnée : MySQL'),
                        TitleIcon(
                            title:
                                "IDE + autre outil : NetBeans, JFreeChart, Jasper Report"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),

            // //REDSAKAY
            ExperienceItem(
              dateExp: 'Novembre 2019 - Février. 2020',
              entreprise: 'Agence RedSakay',
              ville: 'Antananarivo - Antanimena ',
              contextJob: "",
              listWidgetOutil: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    " 1 - Conception et réalisation d'une application mobile de Gestion de tache personnelle.",
                    style: TextStyle(color: Colors.black87, fontSize: 12.h),
                  ),
                  OutilsDetails(
                    iconLangage: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Image.asset('images/dart_20px.png'),
                        Image.asset('images/flutter_20px.png'),
                        Image.asset('images/qr_code_20px.png'),
                        Image.asset('images/database_20px.png'),
                        Image.asset('images/android_os_20px.png'),
                      ],
                    ),
                    listTile: Column(
                      children: [
                        TitleIcon(title: 'Langage de programmation : Dart'),
                        TitleIcon(title: 'FrameWork : Flutter'),
                        TitleIcon(
                            title: 'Base de donnée local : SQFlite / SQLite'),
                        TitleIcon(title: 'State Management : BloC + Provider'),
                      ],
                    ),
                  ),
                  Text(
                    " 2 - Une application mobile pour l'industrie salto au sein de l'agence RedSakay.",
                    style: TextStyle(color: Colors.black87, fontSize: 12.h),
                  ),
                  OutilsDetails(
                    iconLangage: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Image.asset('images/dart_20px.png'),
                        Image.asset('images/flutter_20px.png'),
                        Image.asset('images/firebase_20px.png'),
                        Image.asset('images/database_20px.png'),
                        Image.asset('images/android_os_20px.png'),
                        Image.asset('images/Facebook_20px.png'),
                      ],
                    ),
                    listTile: Column(
                      children: [
                        TitleIcon(title: 'Langage de programmation : Dart'),
                        TitleIcon(title: 'FrameWork : Flutter'),
                        TitleIcon(
                            title: 'Base de donnée local : SQFlite / SQLite'),
                        TitleIcon(
                            title: 'Base de donnée en ligne : Firestore NoSql'),
                        TitleIcon(
                            title: 'BaaS (Backend as a Servive) : Firebase'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),

            //KAIROS
            ExperienceItem(
              dateExp: 'Mai 2021 - Juillet. 2021',
              entreprise: 'Société KAIROS',
              ville: 'Fianarantsoa',
              contextJob:
                  " « : Conception et réalisation d'une application web & mobile de vente en ligne des produits de la société KAIROS.",
              listWidgetOutil: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Front Office et Back Office",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12.h,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                  OutilsDetails(
                    iconLangage: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Image.asset('images/dart_20px.png'),
                        Image.asset('images/flutter_20px.png'),
                        Image.asset('images/firebase_20px.png'),
                        Image.asset('images/database_20px.png'),
                        Image.asset('images/android_os_20px.png'),
                        Image.asset('images/web_20px.png'),
                      ],
                    ),
                    listTile: Column(
                      children: [
                        TitleIcon(title: "Langage de programmation : Dart"),
                        TitleIcon(title: "FrameWork : Flutter"),
                        TitleIcon(
                            title:
                                "Base de donnée en ligne : Firestore NoSQL "),
                        TitleIcon(
                            title:
                                "Base de donnée local : SQflite / Shared_Preference / Hive Database/ Object DB"),
                        TitleIcon(
                            title: "BaaS (Backend as a Service : Firebase "),
                        TitleIcon(
                            title:
                                "Stage Management : Provider + ChangeNotifier"),
                        TitleIcon(
                            title:
                                "Architecture : Model View ViewModel (MVVM)"),
                        TitleIcon(title: "Plateforme : Web & Mobile"),
                      ],
                    ),
                  ),
                  //
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
