import 'package:cashmatrix/Helpers/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'cards_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 86.h,),
        Padding(
          padding: EdgeInsets.only(left: 23.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/svg/pro.svg',
              width: 33.w, height: 33.h,
              ),
              SizedBox(width: 6.w,),
              Padding(padding: EdgeInsets.only(top: 8.h),
              child: Text('Hi, Oluwaseun',
              style: TextStyle(fontSize: 20.sp, fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700, color: Utils.yellowTheme
              ),),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h,),
        const CardsWidget(),
        SizedBox(height: 22.h,),
        Padding(padding: EdgeInsets.only(left: 23.w),
        child: Text('Quick Actions',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21.sp, fontFamily: 'DM Sans', color: Utils.yellowTheme),
        ),
        ),
        SizedBox(height: 26.h,),
        Padding(padding: EdgeInsets.only(
          left: 23.w, right: 23.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 51.h, width: 104.w,
              decoration: BoxDecoration(
                color: const Color(0xFF163B50).withOpacity(0.05),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  children: [
                    Image.asset('assets/images/Initiate Money Transfer.png',
                    width: 32.w, height: 32.h,),
                    SizedBox(width: 3.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Send',
                        style: TextStyle(
                          fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                        ),Text('money',
                        style: TextStyle(
                          fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 51.h, width: 104.w,
              decoration: BoxDecoration(
                color: const Color(0xFF163B50).withOpacity(0.05),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  children: [
                    Image.asset('assets/images/Stack of Money.png',
                    width: 32.w, height: 32.h,),
                    SizedBox(width: 3.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Bills',
                        style: TextStyle(
                          fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                        ),Text('Payment',
                        style: TextStyle(
                          fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 51.h, width: 104.w,
              decoration: BoxDecoration(
                color: const Color(0xFF163B50).withOpacity(0.05),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                child: Row(
                  children: [
                    Image.asset('assets/images/Speaker phone.png',
                    width: 32.w, height: 32.h,),
                    SizedBox(width: 3.w,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Airtime',
                        style: TextStyle(
                          fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                        ),Text('& Data',
                        style: TextStyle(
                          fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        ),
        SizedBox(height: 42.h,),
        Padding(padding: EdgeInsets.only(
            left: 23.w, right: 23.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 51.h, width: 104.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF163B50).withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Row(
                    children: [
                      Image.asset('assets/images/ball.png',
                        width: 32.w, height: 32.h,),
                      SizedBox(width: 3.w,),
                          Text('Betting',
                            style: TextStyle(
                                fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                            ),
                          ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 51.h, width: 104.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF163B50).withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Row(
                    children: [
                      Image.asset('assets/images/qr.png',
                        width: 32.w, height: 32.h,),
                      SizedBox(width: 3.w,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('QR',
                            style: TextStyle(
                                fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                            ),
                          ),Text('Payment',
                            style: TextStyle(
                                fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 51.h, width: 104.w,
                decoration: BoxDecoration(
                  color: const Color(0xFF163B50).withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  child: Row(
                    children: [
                      Image.asset('assets/images/Bill.png',
                        width: 32.w, height: 32.h,),
                      SizedBox(width: 3.w,),
                      Text('More +',
                        style: TextStyle(
                            fontFamily: 'DM Sans', fontSize: 15.sp, fontWeight: FontWeight.w400, color: Color(0xFF163B50)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 117.h,),
        Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Image.asset('assets/images/Group 129.png',
          height: 108.h, width: 354.w,
          ),
        )
      ],
    ),
    );
  }
}
