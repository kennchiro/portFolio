import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() sendOrReset;
  final String title;
  final Color color;

  const CustomButton({
    Key? key,
    required this.sendOrReset,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: MaterialButton(
          
            elevation: 0,
            color: color,
            child: Text(
              title,
              style: TextStyle(color: Colors.white60, fontFamily: 'OpenSansCondensed'),
            ),
            onPressed: sendOrReset),
      ),
    );
  }
}
