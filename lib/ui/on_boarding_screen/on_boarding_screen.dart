import 'package:flutter/material.dart';
import 'package:login_screen_homework/ui/on_boarding_screen/widgets/center_dots.dart';
import 'package:login_screen_homework/ui/on_boarding_screen/widgets/page_item.dart';
import 'package:login_screen_homework/ui/tabs_box.dart';
import 'package:login_screen_homework/ui/widgets/global_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/images.dart';


class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.C_1253AA, AppColors.C_05243E],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (pageIndexInValue) {
                  setState(() {
                    pageIndex = pageIndexInValue;
                  });
                  print("CURRENT PAGE INDEX:$pageIndexInValue");
                },
                children: const [
                  OnBoardingScreenPage(
                      text:
                      """Plan your tasks to do, that\n way you’ll stay organized\n   and you won’t skip any""",
                      image: AppImages.write),
                  OnBoardingScreenPage(
                      text: """  Make a full schedule for
the whole week and stay
organized and productive\n                 all days""",
                      image: AppImages.calendar),
                  OnBoardingScreenPage(
                      text:
                      """create a team task, invite\npeople and manage your\n\t\t\t\t\t\t\t\t\t\t\t\twork together""",
                      image: AppImages.population),
                  OnBoardingScreenPage(text: """"You informations are
       secure with us""", image: AppImages.security),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 115.h, left: 145.w),
                  child: Row(
                    children: [
                      CenterDots(activeDotIndex: pageIndex),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 105.h, left: 40.w),
                  child: NavigateButton(
                    icon: Icon(
                      pageIndex == 3 ? (Icons.done) : (Icons.arrow_forward),
                      size: 35.sp,
                    ),
                    onTap: () {
                      setState(() {
                        pageIndex++;
                      });
                      if (pageIndex == 4) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return TabsBox();
                            },
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
