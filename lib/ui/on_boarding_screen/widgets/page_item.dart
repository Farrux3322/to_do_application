import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        height: 287.h,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      )
    ]);
  }
}
