import 'package:flutter/material.dart';
import 'package:testweb/experiences_education/widget/education_item.dart';

class Education extends StatelessWidget {
  final double heightEduc;
  const Education({
    Key? key,
    required this.heightEduc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
            "EDUCATIONS",
            style: TextStyle(
              color: Color(0xFFadad57).withOpacity(0.9),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
              ),
            SizedBox(
              height: 10,
            ),
            EducationItem(
              dateEduc: 'Novembre 2020 - Mai 2021',
              ecole: 'EMIT Andrainjato Fianarantsoa',
              cycle: '1er année de Master en informatique',
            ),
            SizedBox(
              height: 35,
            ),
            EducationItem(
              dateEduc: 'Mai 2018 - Fevrier 2019',
              ecole: 'EMIT Andrainjato Fianarantsoa',
              cycle: 'Troisième année de Licence en informatique',
            ),
            SizedBox(
              height: 35,
            ),
            EducationItem(
              dateEduc: 'Mai 2017 - Fevrier 2018',
              ecole: 'EMIT Andrainjato Fianarantsoa',
              cycle: 'Deuxième année de Licence en informatique',
            ),
            SizedBox(
              height: 35,
            ),
            EducationItem(
              dateEduc: 'Mai 2016 - Fevrier 2017',
              ecole: 'EMIT Andrainjato Fianarantsoa',
              cycle: 'Première année de Licence en informatique',
            ),
            SizedBox(
              height: 35,
            ),
            EducationItem(
              dateEduc: '2015 – 2016',
              ecole: 'CSFX Fianarantsoa',
              cycle: 'Baccalauréat série C mention : Assez-bien',
            ),
          ],
        ),
      ),
    );
  }
}
