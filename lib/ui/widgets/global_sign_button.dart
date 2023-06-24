import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class SignButton extends StatefulWidget {
  const SignButton({super.key, required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  State<SignButton> createState() => _SignButtonState();
}

class _SignButtonState extends State<SignButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomTapAnimation(
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.C_0EA5E9,
                boxShadow: [
                ],
              ),
              child: Center(child: Text(widget.text,style: TextStyle(color: AppColors.white),)),
            ),
          ),
        )
      ],
    );
  }
}
