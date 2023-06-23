import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/colors.dart';

class CenterDots extends StatelessWidget {
  const CenterDots({Key? key, required this.activeDotIndex}) : super(key: key);

  final int activeDotIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        if (activeDotIndex == index) {
          return activeDot();
        }
        return inActiveDot();
      }),
    );
  }

  Widget activeDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 33.w,
      height: 7.h,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
      ),
    );
  }

  Widget inActiveDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 18,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.white,
      ),
    );
  }
}