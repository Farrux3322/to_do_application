import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../utils/colors.dart';

class ChooseButton extends StatefulWidget {
  const ChooseButton(
      {Key? key,
      required this.height,
      required this.color,
      required this.text,
      required this.textColor, required this.width, required this.onTap});

  final double height;
  final double width;
  final Color color;
  final String text;
  final Color textColor;
  final VoidCallback onTap;

  @override
  State<ChooseButton> createState() => _ChooseButtonState();
}

class _ChooseButtonState extends State<ChooseButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ZoomTapAnimation(
          onTap: widget.onTap,
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.color,
              border: Border.all(color: AppColors.C_0EA5E9),
            ),
            child: Center(
                child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: widget.textColor),
            )),
          ),
        ),
      ],
    );
  }
}
