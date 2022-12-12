
import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/welcome_screens/account_succesful.dart';
import 'package:cashmatrix/welcome_screens/create_account.dart';
import 'package:cashmatrix/welcome_screens/sign_up_bvn.dart';
import 'package:cashmatrix/welcome_screens/verify_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class InputEmail extends StatefulWidget {
  const InputEmail({Key? key, this.email}) : super(key: key);
  final dynamic email;

  @override
  State<InputEmail> createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  bool _obscureText = true;
  bool _reObscureText = true;
  TextEditingController typedMail = TextEditingController();
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
            SizedBox(height: 42.h,),
            Padding(
              padding: EdgeInsets.only(left: 44.w),
              child: Image.asset('assets/images/3.png', height: 52.h, width: 233.w,),
            ),
            SizedBox(height: 57.h,),
            Padding(
              padding: EdgeInsets.only(left: 43.w),
              child: Text('Input your correct details',
                style: TextStyle(color: const Color(0xFF163B50).withOpacity(0.63), fontSize: 15.sp, fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 31.w, right:15.w),
              child: TextFieldContainer(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: typedMail,
                  onSaved: (value){},
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 22.h),
                    hintStyle: TextStyle(
                        color: const Color(0xFFA3A0C0), fontWeight: FontWeight.w400, fontSize: 15.sp, fontFamily: 'DM Sans'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding: EdgeInsets.only(left: 31.w, right:15.w),
              child: TextFieldContainer(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  onSaved: (value){},
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    suffixIcon:Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            _obscureText =!_obscureText;
                          });
                        },
                        child: Icon(_obscureText ? Icons.visibility_off
                            : Icons.visibility,
                            size: 20,color: const Color(0xFFB4B4B4)),
                      ),
                    ),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 22.h),
                    hintStyle: TextStyle(
                        color: const Color(0xFFA3A0C0), fontWeight: FontWeight.w400, fontSize: 15.sp, fontFamily: 'DM Sans'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8.h,),
            Padding(
              padding: EdgeInsets.only(left: 31.w, right:15.w),
              child: TextFieldContainer(
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  onSaved: (value){},
                  obscureText: _reObscureText,
                  decoration: InputDecoration(
                    suffixIcon:Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            _reObscureText =!_reObscureText;
                          });
                        },
                        child: Icon(_reObscureText ? Icons.visibility_off
                            : Icons.visibility,
                            size: 20,color: const Color(0xFFB4B4B4)),
                      ),
                    ),
                    hintText: 'Repeat the Password',
                    contentPadding: EdgeInsets.only(left: 19.w, top: 15.h, bottom: 22.h),
                    hintStyle: TextStyle(
                        color: const Color(0xFFA3A0C0), fontWeight: FontWeight.w400, fontSize: 15.sp, fontFamily: 'DM Sans'
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 95.h,),
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
                    showDialog(context: context,
                        barrierColor:const Color(0xFF000000).withOpacity(0.33),
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)
                            ),
                            content: Container(
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                              ),
                              height: 251.h, width: 335.w,
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.5.w, top: 17.h, right: 8.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Before proceeding with the '
                                                    'registration, make sure that '
                                                    'the email you entered ',
                                                style: TextStyle(
                                                    color: const Color(0xFF000000),
                                                    fontSize: 20.sp, fontFamily: 'Object Sans',
                                                    fontWeight: FontWeight.w400, fontStyle: FontStyle.normal
                                                ),),
                                              TextSpan(
                                                text: typedMail.text,
                                                style: TextStyle(
                                                    color: Utils.yellowTheme,
                                                    fontSize: 20.sp, fontFamily: 'Object Sans',
                                                    fontWeight: FontWeight.w800
                                                ),),
                                              TextSpan(
                                                text: ' is correct.',
                                                style: TextStyle(
                                                    color: const Color(0xFF000000),
                                                    fontSize: 20.sp, fontFamily: 'Object Sans',
                                                    fontWeight: FontWeight.w400, fontStyle: FontStyle.normal
                                                ),),

                                            ]
                                        )),
                                    SizedBox(height: 15.h,),
                                    SizedBox(
                                      height: 62.h,
                                      width: 276.w,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Utils.yellowTheme),
                                            elevation: MaterialStateProperty.all(0),
                                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15.r))),
                                            padding: MaterialStateProperty.all(
                                                EdgeInsets.symmetric(horizontal: 80.w, vertical: 19.h)),
                                            textStyle: MaterialStateProperty.all(TextStyle(
                                                fontSize: 19.sp,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'DM Sans',
                                                color: const Color(0xFFFFFFFF)
                                            ),)
                                        ),
                                        onPressed: (){
                                          Get.to(()=> const VerifyPin());
                                        },
                                        child: const Text('Continue'),),
                                    ),
                                    SizedBox(height: 7.h,),
                                    Align(
                                      alignment: Alignment.center,
                                      child: TextButton(onPressed: (){
                                        Navigator.pop(context);
                                      },
                                          child: Text('Cancel',
                                          style: TextStyle(color: Utils.yellowTheme,
                                          fontWeight: FontWeight.w500, fontSize: 19.sp, fontFamily: 'DM Sans'),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
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
      height: 73.h,
      width: 367.w,
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

