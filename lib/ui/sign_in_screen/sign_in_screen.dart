import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/app_routes.dart';
import 'package:to_do_application/ui/sign_in_screen/widgets/universal_input_view.dart';
import 'package:to_do_application/ui/utils/colors.dart';
import 'package:to_do_application/ui/utils/images.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: AppColors.background),
          title: Text(
            "Sign in Screen",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                  child: Column(
                    children: [
                      Image.asset(
                        AppImages.appLogo,
                        width: 100.w,
                        height: 100.w,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        "Welcome Back to DO IT ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        "Have an other productive day !",
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(
                        height: 48.h,
                      ),
                      UniversalInputView(
                          icon: const Icon(
                            Icons.email,
                            color: AppColors.black,
                          ),
                          hintText: "E-mail",
                          inputType: TextInputType.emailAddress,
                          obscureText: false,
                          onChanged: (v) {}),
                      SizedBox(
                        height: 20.h,
                      ),
                      UniversalInputView(
                          icon: const Icon(
                            Icons.lock,
                            color: AppColors.black,
                          ),
                          hintText: "Password",
                          inputType: TextInputType.visiblePassword,
                          obscureText: true,
                          onChanged: (v) {}),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          ZoomTapAnimation(
                              child: Text(
                            "forget password?",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 14.spMin,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white.withOpacity(.8),
                              fontFamily: "Poppins",
                              decoration: TextDecoration.underline,
                            ),
                          )),
                          SizedBox(
                            width: 24.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      ZoomTapAnimation(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 26),
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.c_0EA5E9),
                          child: const Center(
                            child: Text(
                              "sign in",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don’t have an account? ",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            ZoomTapAnimation(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, RoutesName.signUpScreen);
                                },
                                child: const Text(
                                  "sign up",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.c_63D9F3,
                                      fontFamily: "Poppins"),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 48.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: Row(
                          children: [
                            Text(
                              "Sign In with:",
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            SizedBox(
                              width: 17.w,
                            ),
                            ZoomTapAnimation(
                                child: Image.asset(
                              AppImages.appleImage,
                              width: 60.w,
                              height: 60.w,
                            )),
                            SizedBox(
                              width: 21.w,
                            ),
                            ZoomTapAnimation(
                                child: Image.asset(
                              AppImages.googleImage,
                              width: 60.w,
                              height: 60.w,
                            )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
