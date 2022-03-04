import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spring/spring.dart';

class ProjectCard extends StatelessWidget {
  final String? projectNum;
  final Function() showAlertVideo;
  final String? images;

  const ProjectCard({
    Key? key,
    required this.showAlertVideo,
    required this.images,
    required this.projectNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Spring.slide(
      slideType: SlideType.slide_in_bottom,
      child: Material(
        elevation: 5,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images!), fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: Colors.black,
                child: TextButton.icon(
                  onPressed: showAlertVideo,
                  icon: Icon(
                    Icons.video_collection,
                    color: Color(0xFFadad57).withOpacity(0.9),
                    size: 30.sp,
                  ),
                  label: Text(
                    'Vidéo Démo ...',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 25.sp,
                      fontFamily: 'OpenSansCondensed',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
