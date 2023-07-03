import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen_homework/ui/sign_up_screen/sign_up_screen.dart';
import 'package:login_screen_homework/ui/tabs_box.dart';
import 'package:login_screen_homework/ui/widgets/global_sign_button.dart';
import 'package:login_screen_homework/ui/widgets/global_social.dart';
import 'package:login_screen_homework/ui/widgets/global_textfield.dart';

import '../utils/colors.dart';
import '../utils/images.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
            Padding(
              padding: EdgeInsets.only(
                top: 100.h,
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  AppImages.done,
                  height: 100.h,
                  width: 100.w,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Welcome Back to",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.sp,
                            color: AppColors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "DO IT ",
                        style: TextStyle(
                            fontFamily: "DarumadropOne",
                            fontWeight: FontWeight.w500,
                            fontSize: 25.sp,
                            color: AppColors.white),
                      ),
                    ],
                  ),
                  Text(
                    "Have an other productive day !",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: AppColors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  GlobalTextField(
                      hintText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      prefixIcon: Icons.email,
                      caption: "Email Adress"),
                  GlobalTextField(
                      hintText: "Paaword",
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      prefixIcon: Icons.lock,
                      caption: "Password"),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "forget password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.grey),
                      )),
                  SizedBox(
                    height: 16,
                  ),
                  SignButton(
                      text: "sign in",
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                icon: Icon(CupertinoIcons.square_stack_3d_up_fill,color: AppColors.C_102D53,size: 70,),
                                actions: [
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("Exit",style: TextStyle(color: Colors.red),)),
                                  TextButton(onPressed: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                                      return TabsBox();
                                    }));
                                  }, child: Text("Done",style: TextStyle(color: AppColors.C_102D53))),
                                ],
                                content: Text("               Your account has been created\n\t\t                            successfully\n\nYou gonna recieve a verification code in your email",style: TextStyle(fontSize: 11),),
                              );
                            });
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "sign up",
                          style: TextStyle(
                            color: AppColors.C_0EA5E9,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) {
                                    return SignUp();
                                  }));
                            },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 45),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            "Sign In with:",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.white),
                          ),
                          SizedBox(
                            width: 31,
                          ),
                          SocialButton(
                              icon: SvgPicture.asset(
                                AppImages.apple,
                              ),
                              onTap: () {}),
                          SizedBox(
                            width: 21,
                          ),
                          SocialButton(
                              icon: SvgPicture.asset(
                                AppImages.google,
                              ),
                              onTap: () {}),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}