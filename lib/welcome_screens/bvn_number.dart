
import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/welcome_screens/create_account.dart';
import 'package:cashmatrix/welcome_screens/sign_up_bvn.dart';
import 'package:cashmatrix/welcome_screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BvnNumber extends StatefulWidget {
  const BvnNumber({Key? key}) : super(key: key);

  @override
  State<BvnNumber> createState() => _BvnNumberState();
}

class _BvnNumberState extends State<BvnNumber> {
  bool _select = true;
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
                    padding: EdgeInsets.only(left: 25.w, bottom: 18.h, top: 18.h),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios, size: 20.sp, color: Utils.yellowTheme,)
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 86.w, bottom: 22.h, top: 16.h),
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
            SizedBox(height: 43.h,),
            Padding(
              padding: EdgeInsets.only(left: 45.w),
              child: Image.asset('assets/images/3.png', height: 52.h, width: 233.w,),
            ),
            SizedBox(height: 56.h,),
            Padding(
              padding: EdgeInsets.only(left: 43.w),
              child: Text('Please enter your phone number',
                style: TextStyle(color: const Color(0xFF163B50).withOpacity(0.63), fontSize: 15.sp, fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 3.1.h,),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right:15.w),
              child: TextFieldContainer(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  onSaved: (value){},
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    contentPadding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 22.h),
                    hintStyle: TextStyle(
                        color: const Color(0xFFA3A0C0), fontWeight: FontWeight.w400, fontSize: 15.sp, fontFamily: 'DM Sans'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 44.87.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _select =!_select;
                      });
                    },
                    child: Icon(_select ? Icons.radio_button_off_rounded
                        : Icons.radio_button_on_rounded,
                        size: 20,color: const Color(0xFFCECECE)),
                  ),
                  SizedBox(width: 95.w,),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Text('This is my BVN-linked phone number',
                    style: TextStyle(fontFamily: 'DM Sans', fontSize: 12.5.sp,
                        color: const Color(0xFF163B50).withOpacity(0.63), fontWeight: FontWeight.w500),),
                  )
                ],
              )
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.only(left: 42.w),
              child: Text('Please enter your date of birth',
                style: TextStyle(color: const Color(0xFF163B50).withOpacity(0.63), fontSize: 13.sp, fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500),
              ),
            ),
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
            SizedBox(height: 166.h,),
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
                    Get.to(()=> const VerifyOtp());
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

