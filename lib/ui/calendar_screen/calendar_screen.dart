import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils/colors.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = _selectedDay;
  }
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
  }

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
            SizedBox(height: 100.h),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [AppColors.white.withOpacity(0.1), AppColors.white.withOpacity(0.4)],
                    ),
                  ),
                  child: TableCalendar(
                    calendarStyle: CalendarStyle(
                      defaultTextStyle: TextStyle(color: AppColors.white),
                      outsideTextStyle: TextStyle(color: AppColors.black),
                      weekNumberTextStyle: TextStyle(color: AppColors.white),
                      // todayDecoration: BoxDecoration(color: Colors.transparent,shape: BoxShape.circle),
                      selectedDecoration: BoxDecoration(color: AppColors.black,shape: BoxShape.circle),
                      weekendTextStyle: TextStyle(color: AppColors.C_05243E),
                    ),
                    availableGestures: AvailableGestures.all,
                    focusedDay: _focusedDay,
                    selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                    firstDay: DateTime.utc(1991, 01, 01),
                    lastDay: DateTime.utc(3030, 12, 31),
                    onDaySelected: _onDaySelected,
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                    ),
                    rowHeight: 30.h,
                  ),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
