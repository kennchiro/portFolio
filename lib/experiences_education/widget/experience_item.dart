import 'package:flutter/material.dart';
import 'package:spring/spring.dart';

class ExperienceItem extends StatelessWidget {
  final String dateExp;
  final String entreprise;
  final String ville;
  final String contextJob;

  const ExperienceItem({
    Key? key,
    required this.dateExp,
    required this.entreprise,
    required this.ville,
    required this.contextJob,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      delay: const Duration(milliseconds : 20),
      child: Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 50,
                width: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFFadad57).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.work, color: Colors.white, size: 30),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.dateExp,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      this.entreprise,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      this.ville,
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Job d'été : " + this.contextJob,
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
