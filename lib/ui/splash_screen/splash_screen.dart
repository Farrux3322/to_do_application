import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/app_routes.dart';
import 'package:to_do_application/ui/utils/colors.dart';
import 'package:to_do_application/ui/utils/images.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.onBoardingScreen);
    });
  }

  @override
  void initState() {
    _init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: AppColors.background),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 143.h,
            ),
            Image.asset(
              AppImages.appLogo,
              width: 100.w,
              height: 100.w,
            ),
            SizedBox(
              height: 23.h,
            ),
            const Text(
              "DO IT",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                  fontFamily: "Darumadrop One"),
            ),
            SizedBox(
              height: 228.h,
            ),
            const Text(
              "v 1.0.0",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                  fontFamily: "Poppins"),
            ),
          ],
        ),
      ),
    );
  }
}
