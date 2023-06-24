import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/colors.dart';


class PlanningScreen extends StatefulWidget {
  PlanningScreen({super.key});

  @override
  State<PlanningScreen> createState() => _PlanningScreenState();
}

class _PlanningScreenState extends State<PlanningScreen> {
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
              padding:  EdgeInsets.only(
                top: 300.h,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 350,right: 29),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ZoomTapAnimation(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: AppColors.C_0EA5E9),
                      child: Icon(Icons.add,color: AppColors.white,),
                    ),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}