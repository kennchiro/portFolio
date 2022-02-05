import 'package:flutter/material.dart';
import 'package:testweb/accueil/widgets/expandedBienvenue.dart';
import 'package:testweb/accueil/widgets/expandedImage.dart';

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
      return constraint.maxWidth > 920
          ? Row(
              children: [
                ExpandedBienvenue(),
                ExpandedImageProfile(),
              ],
            )
          : Column(
              children: [
                ExpandedBienvenue(),
                ExpandedImageProfile(),
              ],
            );
    });
  }
}
