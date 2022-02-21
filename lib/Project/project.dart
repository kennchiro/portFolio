import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/Project/widget/genarateCaroussel.dart';
import 'package:testweb/Project/widget/projectCard.dart';
import 'package:testweb/Project/widget/videoPlayer.dart';

class Project extends StatefulWidget {
  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  void initState() {
    super.initState();
  }

  static List<String> project1 = [
    'images/projet1/1.jpg',
    'images/projet1/2.png',
    'images/projet1/3.png',
    'images/projet1/4.png',
    'images/projet1/5.png',
    'images/projet1/6.png',
    'images/projet1/7.png',
    'images/projet1/8.png',
    'images/projet1/9.png',
    'images/projet1/10.png',
    'images/projet1/11.png',
    'images/projet1/12.png',
  ];

  String projectVideo1 = 'videos/video1.mp4';

  static List<String> project2 = [
    'images/projet1/1.jpg',
    'images/projet1/2.png',
    'images/projet1/3.png',
  ];

  showAlertPhotos(String s) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 10,
            alignment: Alignment.center,
            title: Container(
              color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: null,
                    icon: Icon(Icons.photo_library),
                    label: Text(
                      "Photos",
                      style: TextStyle(fontSize: 15.h),
                    ),
                  ),
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.close,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            content: s == 'project1'
                ? GenerateCarousel(listString: project1)
                : GenerateCarousel(listString: project2),
          );
        });
  }

  showAlertVideos(String s) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              alignment: Alignment.center,
              title: Container(
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: null,
                      icon: Icon(Icons.video_collection),
                      label: Text(
                        "Video",
                        style: TextStyle(fontSize: 15.h),
                      ),
                    ),
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.close,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
              content: VideoPlayUI(videoPath: s));
        });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: constraint.maxWidth,
              child: Text(
                'PROJETS',
                style: TextStyle(
                  color: Color(0xFFadad57).withOpacity(0.9),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: GridView.count(
                crossAxisSpacing: 20.h,
                mainAxisSpacing: 20.h,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: constraint.maxWidth > 920 ? 3 : 2,
                children: [
                  ProjectCard(
                    images: 'images/kairosAdminRepresentation.png',
                    showAlertPhoto: () => showAlertPhotos('project1'),
                    projectNum: 'project1',
                    showAlertVideo: () => showAlertVideos('videos/kairosAdmin.mp4'),
                  ),
                  ProjectCard(
                    images: 'images/kairosAdminRepresentation.png',
                    showAlertPhoto: () => showAlertPhotos('project2'),
                    projectNum: 'project2',
                    showAlertVideo: () => showAlertVideos('videos/kairosAdmin.mp4'),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
