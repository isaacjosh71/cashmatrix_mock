import 'package:cashmatrix/welcome_screens/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Helpers/utils.dart';

class SplashC extends StatefulWidget {
  const SplashC({Key? key}) : super(key: key);

  @override
  State<SplashC> createState() => _SplashCState();
}

class _SplashCState extends State<SplashC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            left: -65.w, top: -41.h,
            child: Image.asset('assets/images/Group 122.png',
              width: 506.24.w, height: 1008.28.h,),
          ),
          Positioned(
            left: 16.w, top: 106.h,
            child: Image.asset('assets/images/3.png',
              width: 211.w, height: 47.h,),
          ),
          Positioned(
            left: -6.w, top: 680.h,
            child: Container(
              width: 333.w, height: 237,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.zero, topRight: Radius.circular(70.r),
                      bottomLeft: Radius.zero, bottomRight: Radius.zero),
                  color: Utils.yellowTheme
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 48.w, bottom: 63.h, top: 11.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 8.h, width: 16.w,
                          decoration: BoxDecoration(
                              color: Color(0xFF476C81),
                              borderRadius: BorderRadius.circular(4.r)
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Container(
                          height: 8.h, width: 32.w,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFB129),
                              borderRadius: BorderRadius.circular(4.r)
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Container(
                          height: 8.h, width: 16.w,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(4.r)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 11.h,),
                    Text('Transfer that is safe',
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontFamily: 'Object Sans',
                          color: Utils.dyeTextColor, fontSize: 18.sp
                      ),),
                    SizedBox(height: 15.h,),
                    Text('You have nothing to be scared',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontFamily: 'DM Sans',
                          color: Color(0xFFFAFAFA), fontSize: 16.sp
                      ),),
                    Text('about, we got you covered.',
                      style: TextStyle(
                          fontWeight: FontWeight.w400, fontFamily: 'DM Sans',
                          color: Color(0xFFFAFAFA), fontSize: 16.sp
                      ),),
                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50.h, width: 145.w,
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                          child: Center(
                            child: Text('Start banking',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontFamily: 'DM Sans',
                                  color: Utils.dyeTextColor, fontSize: 16.sp
                              ),),
                          ),
                        ),
                        SizedBox(width: 87.w,),
                        GestureDetector(
                          onTap: (){
                            Get.offAll(()=> const SignIn());
                          },
                          child: Image.asset('assets/images/Arrow 1.png',
                            width: 42.w,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}