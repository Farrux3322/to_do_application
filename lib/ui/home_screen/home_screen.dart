import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen_homework/ui/home_screen/widgets/tasks_screen.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.C_1253AA, AppColors.C_05243E],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60.h, left: 24.w),
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.white),
                    child: Icon(Icons.face_unlock_sharp),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    "oussama chahidi",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 86.w,
                  ),
                  const ZoomTapAnimation(
                    child: Icon(
                      CupertinoIcons.bell_fill,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.w),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Group tasks",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white),
                        )),
                  ),
                  SizedBox(height: 20.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.w,right: 24.w),
                      child: Row(
                        children: [
                          Container(
                            height: 106.h,
                            width: 218.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Design Meeting",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Tomorrow | 10:30pm",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.sp,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 106.h,
                            width: 218.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: AppColors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Design Meeting",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "Tomorrow | 10:30pm",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.sp,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 24.w),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Incomplete Tasks",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white),
                        )),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TasksScreen(
                              text: "Client meeting",
                              text2: "Tomorrow | 10:30 pm"),
                          TasksScreen(
                              text: "Client meeting",
                              text2: "Tomorrow | 10:30 pm"),
                          TasksScreen(
                              text: "Client meeting",
                              text2: "Tomorrow | 10:30 pm"),
                          TasksScreen(
                              text: "Client meeting",
                              text2: "Tomorrow | 10:30 pm"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 24.w),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Completed Tasks",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(children: [
                        TasksScreen(
                            text: "Client meeting",
                            text2: "Tomorrow | 10:30pm"),
                        TasksScreen(
                            text: "Client meeting",
                            text2: "Tomorrow | 10:30pm"),
                        TasksScreen(
                            text: "Client meeting",
                            text2: "Tomorrow | 10:30pm"),
                        TasksScreen(
                            text: "Client meeting",
                            text2: "Tomorrow | 10:30pm"),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
