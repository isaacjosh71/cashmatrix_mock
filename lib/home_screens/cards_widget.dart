
import 'package:cashmatrix/Helpers/card_widget_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardsWidget extends StatefulWidget {
  const CardsWidget({Key? key}) : super(key: key);

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

class _CardsWidgetState extends State<CardsWidget> {
  PageController pageController = PageController(viewportFraction: 0.7);
  int currentIndex = 0;

  @override
  void initState(){
    super.initState();
    pageController.initialPage;
  }

  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 175,
          width: 414.w,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
              itemCount: cardList.length,
              controller: pageController,
              onPageChanged: (int index){
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.only(right: 9.w),
                  child: Image.asset(cardList[index],
                  height: 175.h, width: 272.w,
                  ),
                );
              }),
        ),
        SizedBox(height: 9.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          List.generate(cardList.length, (index){
            return buildDot(index, context);
          }),
        ),
      ],
    );
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(duration: const Duration(milliseconds: 300),
      height: 4.0,
      width: currentIndex == index ? 16.w : 46.w,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: currentIndex == index ? const Color(0xFF476C81):const Color(0xFFFFB129)
      ),
    );
  }
}
