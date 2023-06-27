import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_application/ui/calendar_screen/calendar_screen.dart';
import 'package:to_do_application/ui/home_screen/home_screen.dart';
import 'package:to_do_application/ui/on_boarding_screen/on_boarding_screen.dart';
import 'package:to_do_application/ui/settings_screen/settings.dart';
import 'package:to_do_application/ui/sign_in_screen/sign_in_screen.dart';
import 'package:to_do_application/ui/sign_up_screen/sign_up_screen.dart';
import 'package:to_do_application/ui/splash_screen/splash_screen.dart';
import 'package:to_do_application/ui/tabs_box.dart';
import 'package:to_do_application/ui/tasks_screen/add_todo.dart';
import 'package:to_do_application/ui/tasks_screen/tasks_screen.dart';

class RoutesName {
  static const String initial = "/";
  static const String calendarScreen = "/calendar_screen";
  static const String homeScreen = "/home_screen";
  static const String onBoardingScreen = "/on_boarding_Screen";
  static const String settingScreen = "/setting_screen";
  static const String signInScreen = "/sign_in_screen";
  static const String signUpScreen = "/sign_up_screen";
  static const String tasksScreen = "/tasks_screen";
  static const String tabsBox = "/tabs_box";
  static const String addToDo = "/add_todo";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.initial:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.calendarScreen:
        return MaterialPageRoute(builder: (context) => const CalendarScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.onBoardingScreen:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
      case RoutesName.settingScreen:
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      case RoutesName.signInScreen:
        return MaterialPageRoute(builder: (context) => const SignInScreen());
      case RoutesName.signUpScreen:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case RoutesName.tasksScreen:
        return MaterialPageRoute(builder: (context) => const TasksScreen());
      case RoutesName.tabsBox:
        return MaterialPageRoute(builder: (context) => const TabsBox());
      case RoutesName.addToDo:
        return MaterialPageRoute(builder: (context) => const AddToDo());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route mavjud emas"),
            ),
          ),
        );
    }
  }
}
