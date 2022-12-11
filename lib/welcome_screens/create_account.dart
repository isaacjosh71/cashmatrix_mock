import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/welcome_screens/sign_up_bank.dart';
import 'package:cashmatrix/welcome_screens/sign_up_bvn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 146.h,),
          Padding(
            padding: EdgeInsets.only(left: 29.w),
            child: Image.asset('assets/images/3.png',
            height: 52.h, width: 233.w,
            ),
          ),
          SizedBox(height: 106.h,),
          Padding(
            padding: EdgeInsets.only(left: 111.w),
            child: Text('Create Account',
              style: TextStyle(
              color: const Color(0xFF163B50),
                fontFamily: 'DM Sans',
                fontSize: 25.sp,
                fontWeight: FontWeight.w500
            ),),
          ),
          SizedBox(height: 27.h,),
          Padding(
            padding: EdgeInsets.only(left: 43.w),
            child: Text('Easy creation of account with:',
            style: TextStyle(fontWeight: FontWeight.w400,
                fontSize: 11.sp, color: const Color(0xFF163B50)),),
          ),
          GestureDetector(
            onTap: (){
              Get.to(()=> const SignUpBank());
            },
            child: Container(
              width: double.infinity, height: 64.h,
              color: const Color(0xFFFAFAFA),
              child: Padding(
                padding: EdgeInsets.only(left: 51.w,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Image.asset('assets/images/Bank Account.png',
                      height: 28.h, width: 28.w,),
                    ),
                    SizedBox(width: 10.w,),
                    Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bank Account',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400,
                          color: Utils.dyeTextColor, fontFamily: 'DM Sans'),),
                          Text('Use your existing account from another',
                            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000).withOpacity(0.4), fontFamily: 'DM Sans'),),
                          Text('Bank to sign up',
                            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400,
                          color: const Color(0xFF000000).withOpacity(0.4), fontFamily: 'DM Sans'),),
                        ],
                      ),
                    ),
                    SizedBox(width: 57.w,),
                    Padding(padding: EdgeInsets.only(bottom: 24.h, top: 22.h),
                    child: Icon(Icons.arrow_forward_ios, size: 16.sp,),)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 29.h,),
          GestureDetector(
            onTap: (){
              Get.to(()=> const SignUpBvn());
            },
            child: Container(
              width: double.infinity, height: 64.h,
              color: const Color(0xFFFAFAFA),
              child: Padding(
                padding: EdgeInsets.only(left: 51.w,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 5.h),
                      child: Image.asset('assets/images/Vector.png',
                        height: 28.h, width: 28.w,),
                    ),
                    SizedBox(width: 10.w,),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('BVN',
                            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400,
                                color: Utils.dyeTextColor, fontFamily: 'DM Sans'),),
                          Text('Use your existing account from another',
                            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400,
                                color: const Color(0xFF000000).withOpacity(0.4), fontFamily: 'DM Sans'),),
                          Text('Bank to sign up',
                            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400,
                                color: const Color(0xFF000000).withOpacity(0.4), fontFamily: 'DM Sans'),),
                        ],
                      ),
                    ),
                    SizedBox(width: 57.w,),
                    Padding(padding: EdgeInsets.only(bottom: 24.h, top: 22.h),
                      child: Icon(Icons.arrow_forward_ios, size: 16.sp,),)
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
