import 'package:flutter/material.dart';
import 'package:pro_drawer/pro_drawer.dart';
import 'package:spring/spring.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{

  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
     leading: IconButton(onPressed: ()=> ProDrawer.of(context).toggle(), icon: Icon(Icons.reorder)),
        iconTheme: IconThemeData(color: Colors.white60),
        backgroundColor: Colors.black,
        elevation: 0,
        title: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 300) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MENU",
                    style: TextStyle(
                      color: Colors.white60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spring.bubbleButton(
                      child: Image(
                      image: AssetImage('images/m_90px.png'),
                      height: 35,
                    ),
                  ),
                ],
              );
            } else {
              return Container();
            }
          },
        ),
    );
  }

  @override
  Size get preferredSize => Size(50, 50);
}