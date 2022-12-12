
import 'dart:async';

import 'package:cashmatrix/welcome_screens/sign_in_page.dart';
import 'package:cashmatrix/welcome_screens/splashA.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Helpers/utils.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(
                builder: (context)=>const SplashA()
            )));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.scaffoldColor,
      body: Stack(
        children: [
          Positioned(
              top: 355.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 75.w),
                child: Image.asset('assets/images/CashmatrixLogo.png',
                  height: 185.h,
                  width: 263.h,
                ),
              )),
          Positioned(
              top: 807.h,
              child: Padding(
                padding: EdgeInsets.only(left: 68.w, right: 75.w),
                child: Text('Powered by Assetmatrix MFB',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18.sp,
                      color: const Color(0xFFEE8520),
                    fontFamily: 'Object Sans'
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
