import 'package:flutter/material.dart';
import 'package:testweb/Project/widget/controlsOverlay.dart';
import 'package:video_player/video_player.dart';

class VideoPlayUI extends StatefulWidget {

  final String videoPath;

  const VideoPlayUI({
    Key? key,
    required this.videoPath,
  }) : super(key: key);

  @override
  State<VideoPlayUI> createState() => _VideoPlayUIState();
}

class _VideoPlayUIState extends State<VideoPlayUI> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoPath);

    controller.addListener(() {
      setState(() {});
    });
    controller.setLooping(true);
    controller.initialize().then((_) => setState(() {}));
    // controller.play();
    super.initState();
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio ,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              VideoPlayer(controller),
              ControlsOverlay(controller: controller),
              VideoProgressIndicator(controller, allowScrubbing: true),
            ],
          ),
        ),
      ),
    );
;
  }
}
