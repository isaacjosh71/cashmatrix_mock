import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashA extends StatefulWidget {
  const SplashA({Key? key}) : super(key: key);

  @override
  State<SplashA> createState() => _SplashAState();
}

class _SplashAState extends State<SplashA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            left: -285.w, top: 32.h,
            child: Image.asset('assets/images/womanp.png',
            width: 768.w, height: 896.h,),
          ),
          Positioned(
            left: -6.w, top: -29.h,
            child: Image.asset('assets/images/top.png',
            width: 425.w, height: 84.h,),
          ),
          Positioned(
            left: 16.w, top: 106.h,
            child: Image.asset('assets/images/3.png',
            width: 211.w, height: 47.h,),
          ),
          Positioned(
            left: -6.w, top: 680.h,
            child: Image.asset('assets/images/Rectangle 243.png',
            width: 333.w, height: 273.h,),
          ),

        ],
      ),
    );
  }
}
