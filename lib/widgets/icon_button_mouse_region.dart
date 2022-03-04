import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconButtonMouseRegion extends StatefulWidget {

  IconButtonMouseRegion({
    Key? key,
    required this.initialColor,
    required this.socialIcon,
    required this.size,
  }) : super(key: key);

  Color initialColor;
  IconData socialIcon;
  double size;

  @override
  _IconButtonMouseRegionState createState() => _IconButtonMouseRegionState();
}

class _IconButtonMouseRegionState extends State<IconButtonMouseRegion> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          widget.initialColor = Colors.white;
        });
      },
      onExit: (_) {
        setState(() {
          widget.initialColor = Colors.grey;
        });
      },
      child: IconButton(
        onPressed: () {},
        icon: FaIcon(
          widget.socialIcon,
          color: widget.initialColor,
          size: widget.size,
        ),
      ),
    );
  }
}
