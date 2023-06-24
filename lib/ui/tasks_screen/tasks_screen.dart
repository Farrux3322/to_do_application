import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_application/ui/utils/colors.dart';

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
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.background),
        title: const Text("Tasks Screen"),
        centerTitle: true,
      ),
    );
  }
}
