import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/tasks_screen/widgets/search_text_field.dart';
import 'package:to_do_application/ui/tasks_screen/widgets/tasks_widget.dart';
import 'package:to_do_application/ui/utils/colors.dart';
import 'package:to_do_application/ui/utils/images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 45.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchTextField(
                          hintText: "Search by task title",
                          inputType: TextInputType.text,
                          obscureText: false,
                          onChanged: (v) {},
                          icon: AppImages.search),
                      Container(
                        height: 42.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: AppColors.c_102D53),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 46.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tasks List",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  TasksWidget(
                    text_task: "Client meeting",
                    text_time: "Tomorrow | 10:30pm",
                    voidCallback: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 18,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ZoomTapAnimation(
                onTap: () {},
                child: FloatingActionButton(
                  backgroundColor: AppColors.c_63D9F3,
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
