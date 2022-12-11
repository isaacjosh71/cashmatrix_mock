import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/welcome_screens/touch_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AccountSuccessful extends StatelessWidget {
  const AccountSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 181.h,),
          Padding(
            padding: EdgeInsets.only(left: 57.w, right: 25.w),
            child: Image.asset('assets/images/3.png',
            height: 74.h, width: 332.w,
            ),
          ),
          SizedBox(height: 48.h,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 142.w),
            child: Image.asset('assets/images/Eo_circle_orange_checkmark.png',
            height: 130.h, width: 130.w,
            ),
          ),
          SizedBox(height: 15.h,),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Text('Account created successfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 37.sp,
              fontFamily: 'DM Sans', color: Utils.yellowTheme
              ),
              ),
            )
          ),
          SizedBox(
            height: 25.h,),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Text('You\'re good to go..',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.sp,
                      fontFamily: 'DM Sans', color: Utils.yellowTheme
                  ),
                ),
              )
          ),
          SizedBox(height: 40.h,),
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
                    padding: MaterialStateProperty.all(
                        EdgeInsets.only(top: 19.h, bottom: 18.h, left: 68.w, right: 38.w)),
                    textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'DM Sans',
                        color: const Color(0xFFFFFFFF)
                    ),)
                ),
                onPressed: (){
                  Get.to(()=> const TouchID());
                },
                child: const Text('Start using my account'),),
            ),
          ),
        ],
      ),
    );
  }
}
