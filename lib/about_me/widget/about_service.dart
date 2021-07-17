import 'package:flutter/material.dart';

class ServiceAbout extends StatelessWidget {
  final String service;
  final String serviceText;
  final IconData iconS;
  final IconData? iconOther;

  const ServiceAbout({
    Key? key,
    required this.service,
    required this.serviceText,
    required this.iconS,
    this.iconOther,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 600,
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
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      this.service,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      this.serviceText,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
