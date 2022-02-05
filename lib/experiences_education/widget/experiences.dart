import 'package:flutter/material.dart';

import 'package:testweb/experiences_education/widget/experience_item.dart';

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
            ExperienceItem(
              dateExp: 'Novembre 2018 - Février 2019',
              entreprise: 'DRCF-HM',
              ville: 'Fianarantsoa - Anjoma ',
              contextJob:
                  " « Conception et réalisation d'une application de Gestion du courrier » : en JAVA et Code Igniter. ",
            ),
             SizedBox(
                height: 20,
             ),
            ExperienceItem(
              dateExp: 'Novembre 2019 - Février. 2020',
              entreprise: 'Agence RedSakay',
              ville: 'Antananarivo - Antanimena ',
              contextJob:
                  " « Conception et réalisation d'une application mobile de Gestion de tache personnelle » et « une application mobile pour l'industrie salto au sein de l'agence RedSakay » : en Flutter-Dart-Firebase.",
            ),
             SizedBox(
              height: 20,
            ),
            ExperienceItem(
              dateExp: 'Mai 2021 - Juillet. 2021',
              entreprise: 'Société KAIROS',
              ville: 'Fianarantsoa',
              contextJob:
                  " « Conception et réalisation d'une application web/mobile de vente en ligne » en Flutter-Dart-Firebase.",
            ),
             SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
