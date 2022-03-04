import 'package:flutter/material.dart';


class ServiceTextTile extends StatelessWidget {
  final String serviceText;

  const ServiceTextTile({
    Key? key,
    required this.serviceText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
     return Text(
        this.serviceText,
        style: TextStyle(
          fontSize:  constraint.maxWidth > 400 ?  13 : 9, // 13android , 9 desktop
          color: Colors.black54,
        ),
        textAlign: TextAlign.justify,
        overflow: TextOverflow.visible,
      );
    });
  }
}
