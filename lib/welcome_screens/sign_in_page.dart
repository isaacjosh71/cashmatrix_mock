
import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/home_screens/root_page.dart';
import 'package:cashmatrix/welcome_screens/create_account.dart';
import 'package:cashmatrix/welcome_screens/input_email.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
          SizedBox(height: 150.h),
            Padding(padding: EdgeInsets.only(left: 89.w, right: 51.w),
            child: Image.asset('assets/images/3.png', height: 61.h, width: 274.w,),
            ),
            SizedBox(height: 86.h,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 120.w),
            child: Text('Welcome', style: TextStyle(color: const Color(0xFF163B50),
            fontFamily: 'DM Sans', fontSize: 35.sp, fontWeight: FontWeight.w700
            ),),
            ),
            SizedBox(height: 15.h,),
            Padding(padding: EdgeInsets.only(left: 31.w, right: 28.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFieldContainer(
                  child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value){},
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.only(left: 22.w, top: 15.h, bottom: 22.h),
                    hintStyle: Utils.hintFont,
                    border: InputBorder.none,
                  ),
                ),
                ),
                SizedBox(height: 30.h),
                UsableTextFieldContainer(
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    onSaved: (value){},
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.only(left: 22.w, top: 15.h, bottom: 22.h),
                      hintStyle: Utils.hintFont,
                      suffixIcon:GestureDetector(
                        onTap: (){
                          setState(() {
                            _obscureText =!_obscureText;
                          });
                        },
                        child: Icon(_obscureText ? Icons.visibility_off
                            : Icons.visibility,
                            size: 20,color: const Color(0xFFB4B4B4)),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 14.h),
                Text('Forgot Password?', style: TextStyle(
                  color: Utils.yellowTheme, fontWeight: FontWeight.w400,
                  fontSize: 16.sp, fontFamily: 'DM Sans'
                ),),
              ],
            ),
            ),
            SizedBox(height: 60.h),
            Padding(padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: SizedBox(
              height: 63.h,
              width: 359.w,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Utils.yellowTheme),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(width: 1.w, style: BorderStyle.solid, color: Utils.yellowTheme),
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
                  Get.offAll(()=> const RootPage());
                },
                child: const Text('Sign In My Account'),),
            ),
            ),
            SizedBox(height: 35.h,),
            Padding(padding: EdgeInsets.only(left: 45.w, right: 43.w),
            child:
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'Don\'t have an account? -',
                            style: TextStyle(
                                        color: const Color(0xFF3A3757),
                                        fontSize: 16.sp, fontFamily: 'DM Sans',
                                       fontWeight: FontWeight.w400
                                    ),),
                        TextSpan(
                          recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=> const CreateAccount()),
                            text: ' Create Account',
                          style: TextStyle(
                              color: Utils.yellowTheme,
                              fontSize: 17.sp, fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700
                          ),),

                      ]
                  )),
            )
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
      width: 355.w,
      decoration: BoxDecoration(
        color:  const Color(0xFFEE8520).withOpacity(0.05),
        border: Border.all(
          width: 1.w,
          color: const Color(0xFFEE8520).withOpacity(0.12),
        ),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: child,
    );
  }
}class UsableTextFieldContainer extends StatelessWidget{
  final Widget child;

  const UsableTextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: 351.w,
      decoration: BoxDecoration(
        color:  const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(15.r),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: child,
    );
  }
}
