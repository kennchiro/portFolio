import 'package:flutter/material.dart';

class ServiceAbout extends StatelessWidget {
  final Widget serviceTextWidget;
  final IconData iconS;
  final IconData? iconOther;

  const ServiceAbout({
    Key? key,
    required this.serviceTextWidget,
    required this.iconS,
    this.iconOther,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey.withOpacity(0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              color: Color(0xFFadad57).withOpacity(0.9),
              child: Column(
                children: [
                  Icon(this.iconS, color: Colors.white, size: 22),
                  Icon(this.iconOther, color: Colors.white, size: 18),
                ],
              )
            ),
            Flexible(
              child: this.serviceTextWidget,
            )
          ],
        ),
      ),
    );
  }
}
