import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/tasks_screen/widgets/search_text_field.dart';

class AddToDo extends StatefulWidget {
  const AddToDo({Key? key}) : super(key: key);

  @override
  State<AddToDo> createState() => _AddToDoState();
}

class _AddToDoState extends State<AddToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add to do",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            Center(
              child: SearchTextField(
                  hintText: "task name",
                  inputType: TextInputType.text,
                  obscureText: false,
                  onChanged: (v) {},
                  icon: Icon(Icons.checklist)),
            )
          ],
        ),
      ),
    );
  }
}
