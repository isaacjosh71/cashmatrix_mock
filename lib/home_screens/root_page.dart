
import 'package:cashmatrix/Helpers/utils.dart';
import 'package:cashmatrix/home_screens/contact.dart';
import 'package:cashmatrix/home_screens/home_screen.dart';
import 'package:cashmatrix/home_screens/profile.dart';
import 'package:cashmatrix/home_screens/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.scaffoldColor,
      bottomNavigationBar: getFooter(),
      body: IndexedStack(
        index: pageIndex,
        children: const [
          HomeScreen(),
          Transactions(),
          Profile(),
          Contact()
        ],
      ),
    );
  }

  Widget getFooter(){
    List bottomNavigation = [
      'assets/images/Home.png',
      'assets/images/Payment History.png',
      'assets/images/Account.png',
      'assets/images/Group.png'
    ];
    List bottomText = [
      'Home',
      'Transaction',
      'Profile',
      'Contact'
    ];
    return
        Container(
          width: 355.w,
          height: 74.h,
          color: Utils.scaffoldColor,
          child:
              // Container(height: 1.h, color: const Color(0xFFD9D9D9),),
              Padding(
                padding: EdgeInsets.only(
                    bottom: 5.h, left: 55.w, right: 55.w, top: 5.h
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(bottomNavigation.length,
                        (index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          pageIndex = index;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            bottomNavigation[index],
                            height: 36.h, width: 36.w,
                          ),
                          SizedBox(height: 3.h,),
                          Text(
                            bottomText[index],
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontFamily: 'DM Sans',
                                fontSize: 14.sp, color: Utils.dyeTextColor
                            ),
                          ),
                        ],
                      ),
                    );
                        }),
                ),
              ),
        );
  }
}
