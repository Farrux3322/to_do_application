import 'package:flutter/material.dart';
import 'package:to_do_application/ui/calendar_screen/calendar_screen.dart';
import 'package:to_do_application/ui/settings_screen/settings.dart';
import 'package:to_do_application/ui/tasks_screen/tasks_screen.dart';
import 'package:to_do_application/ui/utils/colors.dart';

import 'home_screen/home_screen.dart';

class TabsBox extends StatefulWidget {
  const TabsBox({Key? key}) : super(key: key);

  @override
  State<TabsBox> createState() => _TabsBoxState();
}

class _TabsBoxState extends State<TabsBox> {

  int currentTabIndex = 0;

  List<Widget> screens = [];

  @override
  void initState() {
    screens.add(const HomeScreen());
    screens.add(const TasksScreen());
    screens.add(const CalendarScreen());
    screens.add(const SettingsScreen());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
        body: screens[currentTabIndex],
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            backgroundColor: AppColors.background,
            selectedLabelStyle: TextStyle(color: AppColors.white),
            unselectedLabelStyle: TextStyle(color: AppColors.white),
            selectedIconTheme: IconThemeData(
              size: 36,
              color: AppColors.white
            ),
            unselectedIconTheme: IconThemeData(
                size: 24,
                color: AppColors.white.withOpacity(0.5)
            ),
            onTap: (index){
              setState(() {
              });
              currentTabIndex = index;
            },
            currentIndex: currentTabIndex,
            elevation: 20,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.dock_rounded,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,),label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings,),label: ""),
            ],
          ),
        ),
    );
  }
}
