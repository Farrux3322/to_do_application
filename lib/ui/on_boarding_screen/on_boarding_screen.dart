import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/on_boarding_screen/widgets/center_dots.dart';
import 'package:to_do_application/ui/on_boarding_screen/widgets/page_item.dart';
import 'package:to_do_application/ui/sign_in_screen/sign_in_screen.dart';
import 'package:to_do_application/ui/utils/colors.dart';
import 'package:to_do_application/ui/utils/images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.background),
        toolbarHeight: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 92),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: PageView(
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (pageIndexInValue) {
                    pageIndex = pageIndexInValue;
                    setState(() {});
                  },
                  children: const [
                    PageItem(
                        imagePath: AppImages.planImage,
                        title:
                            "Plan your tasks to do, that way you’ll stay organized and you won’t skip any"),
                    PageItem(
                      imagePath: AppImages.weekPlanImage,
                      title:
                          "Make a full schedule for the whole week and stay organized and productive all days",
                    ),
                    PageItem(
                      imagePath: AppImages.createTeamImage,
                      title:
                          "create a team task, invite people and manage your work together",
                    ),
                    PageItem(
                      imagePath: AppImages.secureImage,
                      title: "You informations are \nsecure with us",
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 110.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 143.w,
                          ),
                          CenterDots(activeDotIndex: pageIndex),
                          SizedBox(
                            width: 59.w,
                          ),
                          pageIndex != 3
                              ? ZoomTapAnimation(
                                  onTap: () {
                                    pageIndex++;
                                  },
                                  child: Image.asset(
                                    AppImages.nextButton,
                                    width: 90.w,
                                    height: 90.h,
                                  ),
                                )
                              : ZoomTapAnimation(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const SignInScreen()));
                                  },
                                  child: Image.asset(
                                    AppImages.doneButton,
                                    width: 90.w,
                                    height: 90.h,
                                  ),
                                ),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
