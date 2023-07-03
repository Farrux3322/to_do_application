import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_application/ui/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.background),
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
    );
  }
}
