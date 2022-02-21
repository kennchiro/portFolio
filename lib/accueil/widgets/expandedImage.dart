import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spring/spring.dart';

class ExpandedImageProfile extends StatefulWidget {
  const ExpandedImageProfile({Key? key}) : super(key: key);

  @override
  State<ExpandedImageProfile> createState() => _ExpandedImageProfileState();
}

class _ExpandedImageProfileState extends State<ExpandedImageProfile>
    with TickerProviderStateMixin {
  AnimationController? _resizableController;

  AnimatedBuilder getContainer() {
    return new AnimatedBuilder(
        animation: _resizableController!,
        builder: (context, child) {
          return Container(
            padding: EdgeInsets.all(24),
            child: Text(
              "Bienvenue tout le monde",
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18.h,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(
                  color: Colors.white70,
                  width: _resizableController!.value * 3),
            ),
          );
        });
  }

  @override
  void dispose() {
    _resizableController!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _resizableController = new AnimationController(
      vsync: this,
      duration: new Duration(
        milliseconds: 1000,
      ),
    );
    _resizableController!.addStatusListener((animationStatus) {
      switch (animationStatus) {
        case AnimationStatus.completed:
          _resizableController!.reverse();
          break;
        case AnimationStatus.dismissed:
          _resizableController!.forward();
          break;
        case AnimationStatus.forward:
          break;
        case AnimationStatus.reverse:
          break;
      }
    });
    _resizableController!.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Spring.fadeIn(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              colorFilter: ColorFilter.srgbToLinearGamma(),
              image: AssetImage(
                "images/profile-bg.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: getContainer(),
        ),
      ),
    );
  }
}
