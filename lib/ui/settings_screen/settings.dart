import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_application/ui/utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.background),
        title: Text(
          "Settings Screen",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
      ),
    );
  }
}
