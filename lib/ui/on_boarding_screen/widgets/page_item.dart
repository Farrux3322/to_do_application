import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
class OnBoardingScreenPage extends StatelessWidget {
  const OnBoardingScreenPage({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 100.h,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              image,
              height: 297.h,
              width: 411.w,
            ),
          ),
        ),
        SizedBox(
          height: 90.h,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 20.sp,
              fontFamily: "PoppinsMedium",
              color: AppColors.white),
        ),
      ],
    );
  }
}
