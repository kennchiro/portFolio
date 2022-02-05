import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spring/spring.dart';
import 'package:testweb/accueil/widgets/android.dart';
import 'package:testweb/accueil/widgets/jeSuisMaharo.dart';

import 'col_title.url.dart';

class ExpandedBienvenue extends StatelessWidget {
  const ExpandedBienvenue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
      return Expanded(
          child: Container(
        color: Colors.black,
        child: Spring.slide(
            delay: const Duration(milliseconds: 200),
            slideType: SlideType.slide_in_left,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20),
                    // layout builder
                    child: constraint.maxWidth > 920
                        ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              JeSuisMaharo(),
                              Android(),
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              JeSuisMaharo(),
                              Android(),
                            ],
                          ),
                  ),
                  SizedBox(
                    height: 20.w,
                  ),
                  //
                  Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.start,
                    children: [
                      MenuUrl(
                        title: "Mes Oeuvres",
                        icon: Icons.work,
                      ),
                      MenuUrl(
                        title: "Contact",
                        icon: Icons.contact_mail,
                      ),
                      MenuUrl(
                          title: "Competence",
                          icon: Icons.stacked_line_chart_outlined),
                    ],
                  ),
                ],
              ),
            )),
      ));
    });
  }
}
