import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_application/ui/utils/colors.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.background),
        title: const Text("Calendar Screen"),
        centerTitle: true,
      ),
    );
  }
}
