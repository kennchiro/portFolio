import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogType extends StatelessWidget {
  final Widget contentWidget;
  final String label;
  final IconData iconType;

  const DialogType({
    Key? key,
    required this.contentWidget,
    required this.label,
    required this.iconType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black87,
      elevation: 10,
      alignment: Alignment.center,
      title: Container(
        color: Colors.white70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: null,
              icon: Icon(
                iconType,
                color: Colors.black87,
              ),
              label: Text(
                label,
                style: TextStyle(fontSize: 15.h, color: Colors.black87, fontFamily: 'OpenSansCondensed',),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.close,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
      content: contentWidget,
    );
  }
}
