import 'package:cashmatrix/home_screens/home_screen.dart';
import 'package:cashmatrix/home_screens/root_page.dart';
import 'package:cashmatrix/welcome_screens/onboarding.dart';
import 'package:cashmatrix/welcome_screens/splashA.dart';
import 'package:cashmatrix/welcome_screens/splashB.dart';
import 'package:cashmatrix/welcome_screens/splashc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnBoardingScreen(),
        );
      },
    );
  }
}
