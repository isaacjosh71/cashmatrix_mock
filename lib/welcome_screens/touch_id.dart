import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/home_screens/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TouchID extends StatelessWidget {
  const TouchID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 98.h,),
          Padding(
            padding: EdgeInsets.only(left: 44.w, right: 226.w),
            child: Image.asset('assets/images/3.png',
              height: 37.h, width: 144.w,
            ),
          ),
          SizedBox(height: 71.h,),
          Padding(
            padding: EdgeInsets.only(left: 70.w, right: 77.w),
            child: SvgPicture.asset('assets/svg/Finger ID Access.svg',
              height: 267.h, width: 267.w,
            ),
          ),
          SizedBox(height: 33.h,),
          Padding(
            padding: EdgeInsets.only(left: 37.w, right: 45.w),
            child: Text('Do you want to log into your account with Touch ID while signing in?',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp,
                  fontFamily: 'DM Sans', color: Utils.dyeTextColor
                  )
              ),
            ),
          SizedBox(
            height: 29.h,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 44.w),
            child: SizedBox(
              height: 62.h,
              width: 327.w,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Utils.yellowTheme),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r))),
                    textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'DM Sans',
                        color: const Color(0xFFFFFFFF)
                    ),)
                ),
                onPressed: (){
                  // Get.to(()=> const SignUpBvn());
                },
                child: const Align(
                    alignment: Alignment.center,
                    child: Text('Yes, use touch ID')),),
            ),
          ),
          SizedBox(
            height: 26.h,),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 148.w),
                child: TextButton(
                  onPressed: () {
                    Get.off(()=> const RootPage());
                  },
                  child: Text('No thanks',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp,
                        fontFamily: 'DM Sans', color: Utils.yellowTheme
                    ),
                  ),
                ),
              )
          ),
          SizedBox(
            height: 147.h,),
          Padding(padding: EdgeInsets.only(left: 112.w, right: 120.w),
          child: Text('Terms and condition',
          style: TextStyle(
            color: Utils.dyeTextColor
          ),
          ),
          )
        ],
      ),
    );
  }
}
