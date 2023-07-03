import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/colors.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
        child: Padding(
          padding: EdgeInsets.only(
            top: 50.h,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: "PoppinsMedium",
                          fontSize: 25,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: ZoomTapAnimation(
                        onTap: (){},
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.profile_circled,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "PoppinsMedium",
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.C_0EA5E9,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: AppColors.white.withOpacity(0.25),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: ZoomTapAnimation(
                        onTap: (){},
                        child: Row(
                          children: [
                            Icon(
                              Icons.messenger,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Conversations",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "PoppinsMedium",
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.C_0EA5E9,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: AppColors.white.withOpacity(0.25),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: ZoomTapAnimation(
                        onTap: (){},
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.lightbulb,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Projects",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "PoppinsMedium",
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.C_0EA5E9,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: AppColors.white.withOpacity(0.25),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
                      child: ZoomTapAnimation(
                        onTap: (){},
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.doc_text_search,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Terms and Policies",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "PoppinsMedium",
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.C_0EA5E9,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.5,
                      color: AppColors.white.withOpacity(0.25),
                    ),
                    SizedBox(height: 95,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shadowColor: AppColors.C_0EA5E9,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout,
                              color: Colors.red,
                            ),
                            Text(
                              "Logout",
                              style: TextStyle(
                                fontFamily: "PoppinsMedium",
                                fontSize: 16,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
