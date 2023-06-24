import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../utils/images.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key, required this.text, required this.text2});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
  final String text;
  final String text2;
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 5.h),
      child: Container(
        height: 64.h,
        width: 375.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), color: AppColors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left:20.w,top: 16.h,bottom: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colors.black),
                  ),
                  Text(
                    widget.text2,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset(
                  AppImages.arrow,
                  height: 16.h,
                  width: 11.h,
                ),
                SizedBox(
                  width: 16.w,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
