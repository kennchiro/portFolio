import 'package:flutter/material.dart';
import 'package:testweb/about_me/widget/column_1.dart';
import 'package:testweb/about_me/widget/column_2.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth < 768) {
        return Column(
            children: [
              Column1(heightC1: constraint.maxHeight),
              Column2(heightC2: constraint.maxHeight),
            ],
          );
      } else {
        return Row(
          children: [
            Column1(heightC1: constraint.maxHeight),
            Column2(heightC2: constraint.maxHeight),
          ],
        );
      }
    });
  }
}
