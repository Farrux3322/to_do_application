import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen_homework/ui/add_todo_screen/widgets/data_time.dart';
import 'package:login_screen_homework/ui/add_todo_screen/widgets/description.dart';
import 'package:login_screen_homework/ui/add_todo_screen/widgets/task.dart';
import 'package:login_screen_homework/ui/utils/colors.dart';
import 'package:login_screen_homework/ui/widgets/choose_button.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 366.h,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.transparent, offset: Offset(0, 2))
                  ]),
                ),
                Container(
                  width: 400.w,
                  height: 444.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: AppColors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 54,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 27),
                          child: TaskField(
                            hintText: "task",
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            prefixIcon: Icons.library_add_check_sharp,
                            caption: '',
                          ),
                        ),
                        SizedBox(
                          height: 34,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 27),
                          child: Description(
                            taskName: "Description",
                            icon: Icon(Icons.line_weight, color: AppColors.white),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 22),
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DataTime(
                                key: UniqueKey(),
                                icon: Icon(Icons.calendar_month,
                                    color: AppColors.white),
                                text: "Date",
                                onTap: () async {
                                  DateTime? dateTime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1991),
                                    lastDate: DateTime(3030),
                                    builder: (BuildContext context, Widget? child) {
                                      return Theme(
                                        data: ThemeData.light().copyWith(
                                          primaryColor: AppColors.C_102D53,
                                          hintColor: AppColors.C_05243E,
                                          colorScheme: ColorScheme.light(
                                            primary: AppColors.C_102D53,
                                          ),
                                          dialogBackgroundColor: AppColors.white,
                                        ),
                                        child: child ?? const SizedBox(),
                                      );
                                    },
                                  );
                                },
                              ),
                              DataTime(
                                  key: UniqueKey(),
                                  icon: Icon(Icons.access_time_outlined,
                                      color: AppColors.white),
                                  text: "Time",
                                  onTap: () async {
                                    TimeOfDay? timeOfDay = await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now());
                                  }),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          margin: EdgeInsets.symmetric(horizontal: 27),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ChooseButton(
                                height: 45,
                                color: AppColors.white,
                                text: "cancel",
                                textColor: AppColors.black,
                                width: 165, onTap: () {
                                  Navigator.pop(context);
                              },
                              ),
                              ChooseButton(
                                height: 45,
                                color: AppColors.C_0EA5E9,
                                text: "create",
                                textColor: AppColors.white,
                                width: 165, onTap: () {  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
