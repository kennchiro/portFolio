import 'package:flutter/material.dart';
import 'package:testweb/experiences_education/widget/education.dart';
import 'package:testweb/experiences_education/widget/experiences.dart';

class ExperienceEducation extends StatelessWidget {
  const ExperienceEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 768) {
        return Column(
            children: [
              Experience(heightExpe: constraint.maxHeight,),
              Container(
              width: constraint.maxWidth,
              color: Color(0xFFadad57).withOpacity(0.9),
              height: 2,
              ),
              Education(heightEduc: constraint.maxHeight,),
            ],
          );
      } else {
        return Row(
          children: [
           Experience(heightExpe: constraint.maxHeight,),
           Education(heightEduc: constraint.maxHeight,),
          ],
        );
      }
    });
  }
}