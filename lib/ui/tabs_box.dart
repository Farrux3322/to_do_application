import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/planning_screen/planning_screen.dart';
import 'package:login_screen_homework/ui/settings_screen/settings.dart';
import 'package:login_screen_homework/ui/sign_in_screen/sign_in_screen.dart';
import 'package:login_screen_homework/ui/utils/colors.dart';

import 'calendar_screen/calendar_screen.dart';
import 'home_screen/home_screen.dart';

class TabsBox extends StatefulWidget {
  TabsBox({Key? key}) : super(key: key);

  @override
  State<TabsBox> createState() => _TabsBoxState();

}

class _TabsBoxState extends State<TabsBox> {
  int _currentIndex = 0;

  List<Widget> screens = [];

  @override
  void initState() {
    screens.add(HomeScreen());
    screens.add(PlanningScreen());
    screens.add(CalendarScreen());
    screens.add(SettingsScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_05243E,
      body: screens[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 110,
        child: BottomNavigationBar(
          backgroundColor: AppColors.C_05243E,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: AppColors.white,
          selectedItemColor: Colors.greenAccent,
          currentIndex: _currentIndex,
          onTap: ( index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.house,size: 30),label:"____"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.text_badge_checkmark,size: 30,),label:"____"),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,size: 30,),label:"____"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30,),label:"____"),
          ],
        ),
      ),
    );
  }
}