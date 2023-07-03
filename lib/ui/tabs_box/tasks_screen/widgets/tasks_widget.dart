import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/utils/colors.dart';
import 'package:to_do_application/ui/utils/images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TasksWidget extends StatefulWidget {
  TasksWidget(
      {Key? key,
      required this.text_task,
      required this.text_time,
      required this.voidCallback})
      : super(key: key);
  final String text_task;
  final String text_time;
  VoidCallback voidCallback;

  @override
  State<TasksWidget> createState() => _TasksWidgetState();
}

class _TasksWidgetState extends State<TasksWidget> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: widget.voidCallback,
      child: Container(
        height: 51.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.sp),
          color: AppColors.c_102D53,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.text_task,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    widget.text_time,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Image.asset(AppImages.down),
            ),
          ],
        ),
      ),
    );
  }
}
