import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/planning_screen/widgets/search_button.dart';

import '../home_screen/widgets/tasks_screen.dart';
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24,vertical: 55),
                child: Search()),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("Tasks List",style: TextStyle(fontSize: 16,color: AppColors.white),)),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 21,),
                    TasksScreen(text: "Client meeting", text2: "Tomorrow | 10:30 pm"),
                    SizedBox(height: 22,),
                    TasksScreen(text: "Client meeting", text2: "Tomorrow | 10:30 pm"),
                    SizedBox(height: 22,),
                    TasksScreen(text: "Client meeting", text2: "Tomorrow | 10:30 pm"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
