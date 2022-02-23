
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testweb/landing_screen.dart';

Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'PortFolio Maharo',
          home: LandingScreenDrawer(),
      ),
    );
  }
}
