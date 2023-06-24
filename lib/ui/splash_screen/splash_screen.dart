import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../on_boarding_screen/on_boarding_screen.dart';
import '../utils/colors.dart';
import '../utils/images.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    _navigateToFirstScreen(context);

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
                top: 200.h,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AppImages.done,
                  height: 100.h,
                  width: 100.w,
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            Text(
              "DO IT",
              style:
              TextStyle(fontFamily: "DarumadropOne",fontWeight: FontWeight.w500,fontSize: 36.sp, color: AppColors.white),
            ),
            SizedBox(height: 300.h,),
            Text(
              "v 1.0.0",
              style:
              TextStyle(fontWeight: FontWeight.w400,fontSize: 18.sp,color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
  void _navigateToFirstScreen(BuildContext context) async {
    Future.delayed( const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return FirstScreen();
          }));
    });
  }
}