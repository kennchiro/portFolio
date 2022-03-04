import 'package:flutter/material.dart';
import 'package:testweb/Contact/widget/expandedFormBuilder.dart';
import 'package:testweb/Contact/widget/expandedsocial.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return constraints.maxWidth > 920 
         ? Row(
              children: [
                ExpandedFormBuilder(),
                ExpandedSocial(),
              ],
            )
          : Column(
              children: [
                ExpandedFormBuilder(),
                ExpandedSocial(),
              ],
            );
      }),
    );
  }

}
