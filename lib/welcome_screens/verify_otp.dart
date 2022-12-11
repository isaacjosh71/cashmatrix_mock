import 'package:cashmatrix/welcome_screens/account_succesful.dart';
import 'package:cashmatrix/welcome_screens/bvn_number.dart';
import 'package:cashmatrix/welcome_screens/input_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Helpers/utils.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(63.h),
        child: AppBar(
          elevation: 0,
          backgroundColor: Utils.appBarTheme,
          automaticallyImplyLeading: false,
          primary: false,
          excludeHeaderSemantics: true,
          flexibleSpace: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 33.w, bottom: 17.h, top: 19.h),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios,
                      size: 20, color: Utils.yellowTheme,)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 116.w, bottom: 22.h, top: 16.h),
                    child: Text('Validate', style: TextStyle(
                        fontFamily: 'DM Sans', fontWeight: FontWeight.w700, fontSize: 18.sp, color: Utils.dyeTextColor
                    ),),
                  ),
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 41.h,),
            Padding(
              padding: EdgeInsets.only(left: 42.w, right: 139.w),
              child: Image.asset('assets/images/3.png',
              height: 52.h, width: 233.w,
              ),
            ),
            SizedBox(height: 89.h,),
            Padding(
                padding: EdgeInsets.only(left: 42.w, right: 46.w),
            child: Text('Please enter the code we sent to your phone',
            style: TextStyle(fontSize: 15.sp, fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400, color: Utils.dyeTextColor.withOpacity(0.63)
            ),
            ),
            ),
            SizedBox(height: 12.h,),
            Padding(padding: EdgeInsets.only(left: 46.w, right: 56.w),
              child: OtpTextField(
                numberOfFields: 4,
                borderColor: const Color(0xFFCECECE),
                focusedBorderColor: const Color(0xFFCECECE),
                fillColor: const Color(0xFFFAFAFA),
                fieldWidth: 66.w,
                filled: true,
                margin: EdgeInsets.only(right: 4.w, left: 6.w),
                showFieldAsBox: true,
                  borderRadius: BorderRadius.circular(10.r),
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode){}, // end onSubmit
              ),
            ),
            SizedBox(height: 240.h,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 43.5.w),
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
                          EdgeInsets.symmetric(horizontal: 103.w, vertical: 19.h)),
                      textStyle: MaterialStateProperty.all(TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'DM Sans',
                          color: const Color(0xFFFFFFFF)
                      ),)
                  ),
                  onPressed: (){
                    Get.to(()=> const InputEmail());
                  },
                  child: const Text('Continue'),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
