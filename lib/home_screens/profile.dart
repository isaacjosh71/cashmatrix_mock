import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Helpers/utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(56.h),
      //   child: AppBar(
      //     elevation: 0,
      //     backgroundColor: Utils.appBarTheme,
      //     automaticallyImplyLeading: false,
      //     primary: false,
      //     excludeHeaderSemantics: true,
      //     flexibleSpace: SafeArea(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: EdgeInsets.only(left: 29.w, bottom: 18.h, top: 18.h),
      //               child: GestureDetector(
      //                   onTap: (){
      //                     Navigator.pop(context);
      //                   },
      //                   child: Icon(Icons.arrow_back_ios, size: 20.sp, color: Utils.yellowTheme,)
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.only(left: 86.w, bottom: 22.h, top: 16.h),
      //               child: Text('Create Account', style: TextStyle(
      //                   fontFamily: 'DM Sans', fontWeight: FontWeight.w700, fontSize: 17.sp, color: Utils.dyeTextColor
      //               ),),
      //             ),
      //           ],
      //         )),
      //   ),
      // ),
    );
  }
}
