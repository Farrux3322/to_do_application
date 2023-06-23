import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';

class PageItem extends StatelessWidget {
  const PageItem({Key? key, required this.imagePath, required this.title}) : super(key: key);

  final String imagePath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        imagePath,
        width: 411.w,
        height: 297.h,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style:const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.white,
              fontFamily: "Poppins"),
        ),
      )
    ]);
  }
}
