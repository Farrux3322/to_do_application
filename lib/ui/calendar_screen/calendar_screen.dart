import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class CalendarScreen extends StatefulWidget {
  CalendarScreen({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(top: 300.h),
              child: Align(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  onPressed: () async {
                    DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1991),
                      lastDate: DateTime(3030),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: AppColors.C_1253AA,
                            hintColor: AppColors.C_05243E,
                            colorScheme: ColorScheme.light(
                              primary: AppColors.C_1253AA,
                            ),
                            dialogBackgroundColor: AppColors.white,
                          ),
                          child: child ?? const SizedBox(),
                        );
                      },
                    );
                  },
                  child: Text("Click"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
