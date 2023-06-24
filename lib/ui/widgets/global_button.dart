import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class NavigateButton extends StatefulWidget {
  const NavigateButton({super.key, required this.icon, required this.onTap});

  final Icon icon;
  final VoidCallback onTap;

  @override
  State<NavigateButton> createState() => _NavigateButtonState();
}

class _NavigateButtonState extends State<NavigateButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomTapAnimation(
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.white.withOpacity(0.5),
                    blurRadius: 10.r,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: widget.icon,
            ),
          ),
        )
      ],
    );
  }
}
