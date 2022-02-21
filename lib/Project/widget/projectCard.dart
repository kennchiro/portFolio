import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectCard extends StatelessWidget {
  final String? projectNum;
  final Function() showAlertPhoto;
  final Function() showAlertVideo;
  final String? images;

  const ProjectCard({
    Key? key,
    required this.showAlertPhoto,
    required this.showAlertVideo,
    required this.images,
    required this.projectNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
              color: Colors.black,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    onPressed: showAlertPhoto,
                    icon: Icon(
                      Icons.photo_library,
                      color: Color(0xFFadad57).withOpacity(0.9),
                      size: 15.sp,
                    ),
                    label: Text(
                      'Photos',
                      style: TextStyle(color: Colors.white70, fontSize: 15.sp),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: showAlertVideo,
                    icon: Icon(
                      Icons.video_collection,
                      color: Color(0xFFadad57).withOpacity(0.9),
                      size: 15.sp,
                    ),
                    label: Text(
                      'Video',
                      style: TextStyle(color: Colors.white70, fontSize: 15.sp),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
