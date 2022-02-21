import 'package:flutter/material.dart';
import 'package:testweb/about_me/widget/resumeProfile.dart';
import 'package:testweb/about_me/widget/serviceProfile.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
      if (constraint.maxWidth < 768) {
        return Column(
            children: [
              ResumeProfile(heightC1: constraint.maxHeight),
              ServiceProfile(heightC2: constraint.maxHeight,),
            ],
          );
      } else {
        return Row(
          children: [
            ResumeProfile(heightC1: constraint.maxHeight),
            ServiceProfile(heightC2: constraint.maxHeight,),
          ],
        );
      }
    });
  }
}
