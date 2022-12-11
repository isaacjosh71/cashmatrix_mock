
import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/welcome_screens/create_account.dart';
import 'package:cashmatrix/welcome_screens/sign_up_bvn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'input_email.dart';

class SignUpBank extends StatelessWidget {
  const SignUpBank({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(left: 27.w, bottom: 19.h, top: 19.h),
                    child: GestureDetector(
                      onTap: (){
                        Get.off(()=> const CreateAccount());
                      },
                      child: Text('Cancel', style: TextStyle(
                          fontFamily: 'DM Sans', fontWeight: FontWeight.w400, fontSize: 15.sp, color: Utils.yellowTheme
                      ),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 88.5.w, bottom: 22.h, top: 16.h),
                    child: Text('Create Account', style: TextStyle(
                        fontFamily: 'DM Sans', fontWeight: FontWeight.w700, fontSize: 17.sp, color: Utils.dyeTextColor
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 41.h,),
            Padding(
              padding: EdgeInsets.only(left: 43.w),
              child: Image.asset('assets/images/3.png', height: 52.h, width: 233.w,),
            ),
            SizedBox(height: 43.h,),
            Padding(
              padding: EdgeInsets.only(left: 42.w),
              child: Text('Please enter your bank details',
              style: TextStyle(color: const Color(0xFF163B50).withOpacity(0.63), fontSize: 15.sp, fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 23.w, right:13.w),
              child: TextFieldContainer(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onSaved: (value){},
                  decoration: InputDecoration(
                    hintText: 'Account Number',
                    contentPadding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 22.h),
                    hintStyle: TextStyle(
                      color: const Color(0xFFA3A0C0), fontWeight: FontWeight.w400, fontSize: 15.sp, fontFamily: 'DM Sans'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.only(left: 23.w, right:13.w),
              child: TextFieldContainer(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  onSaved: (value){},
                  decoration: InputDecoration(
                    hintText: 'Bank Name',
                    contentPadding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 22.h),
                    hintStyle: TextStyle(
                      color: const Color(0xFFA3A0C0), fontWeight: FontWeight.w400, fontSize: 15.sp, fontFamily: 'DM Sans'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            Padding(
              padding: EdgeInsets.only(left: 42.w),
              child: Text('Please enter your date of birth',
                style: TextStyle(color: const Color(0xFF163B50).withOpacity(0.63), fontSize: 15.sp, fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 9.h,),
            Padding(padding: EdgeInsets.only(left: 42.w, right: 50.w),
            child: TextFormField(
              textInputAction: TextInputAction.next,
              onSaved: (value){},
              decoration: InputDecoration(
                hintText: 'DD/MM/YYYY',
                hintStyle: TextStyle(
                    color: const Color(0xFF163B50).withOpacity(0.63), fontWeight: FontWeight.w500, fontSize: 18.sp, fontFamily: 'DM Sans'
                ),
              ),
            ),),
            SizedBox(height: 143.h,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 45.w),
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

class TextFieldContainer extends StatelessWidget{
  final Widget child;

  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: 382.w,
      decoration: BoxDecoration(
        color:  const Color(0xFFFAFAFA),
        border: Border.all(
          width: 1.w,
          color: const Color(0xFFCECECE),
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: child,
    );
  }
}

