import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';


class CalendarScreen extends StatefulWidget {
  CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
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
              child: Align(
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.calendar_month_outlined,
                  size: 100,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}