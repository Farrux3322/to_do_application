import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key, required this.icon, required this.onTap});

  final SvgPicture icon;
  final VoidCallback onTap;

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomTapAnimation(
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black.withOpacity(0.5),
                    blurRadius: 10.r,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: widget.icon,
              ),
            ),
          ),
        )
      ],
    );
  }
}
