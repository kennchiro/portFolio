import 'package:flutter/material.dart';

class Android extends StatelessWidget {
  const Android({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.android,
          color: Colors.lime,
          size: 100,
        ),
        Text(
          'ANDROID',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 20,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.white70,
              size: 15,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Flutter',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.white70,
              size: 15,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Kotlin',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.white70,
              size: 15,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              'Java',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ],
    );
  }
}
