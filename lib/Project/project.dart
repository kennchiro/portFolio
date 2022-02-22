import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/Project/widget/alertDialog.dart';
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

  // notre list de projet actuel
  List<Map> mapProject = [
    {
      'project' : 'project1',
      'image': 'images/kairosAdminRepresentation.png',
      'video': 'videos/kairosAdmin.mp4',
    },
    {  
      'project': 'project2',
      'image': 'images/kairosClient.png',
      'video': 'videos/kairosClient.mp4',
    }
  ];

  showAlertVideos(String s) {
    showDialog(
        context: context,
        builder: (context) {
          return DialogType(
              label: 'Demo',
              iconType: Icons.video_camera_back,
              contentWidget: VideoPlayUI(videoPath: s));
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
              child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  shrinkWrap: true,
                  itemCount: mapProject.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraint.maxWidth > 920
                        ? 3
                        : constraint.maxWidth >= 500
                            ? 2
                            : 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (_, index) {
                    final select = mapProject[index];
                    return ProjectCard(
                      images: select['image'],
                      projectNum: select['project'],
                      showAlertVideo: () => showAlertVideos(select['video']),
                    );
                  }),
            ),
          ],
        ),
      );
    });
  }
}
