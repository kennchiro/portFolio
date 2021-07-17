import 'package:flutter/material.dart';

class ActiveTile extends StatelessWidget {
  final String? menuName;
  final Widget? menuWidget;

  const ActiveTile({this.menuName, this.menuWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(90),
          topRight: Radius.circular(90),
        ),
        gradient: new LinearGradient(
          colors: [
            Colors.black12.withOpacity(0.1),
            Colors.black12.withOpacity(0.1)
          ],
        ),
      ),
      child: ListTile(
        hoverColor: Colors.transparent,
        leading: this.menuWidget,
        title: Text(this.menuName!,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            )),
        onTap: () {},
      ),
    );
  }
}
