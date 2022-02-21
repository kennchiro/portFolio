import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GenerateCarousel extends StatelessWidget {
  final List<String> listString;

  const GenerateCarousel({
    Key? key,
    required this.listString,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      items: listString.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.asset(url, fit: BoxFit.contain),
            ),
          );
        },
      ).toList(),
      autoPlay: true,
      autoPlayInterval: const Duration(seconds: 3),
    );
  }
}
