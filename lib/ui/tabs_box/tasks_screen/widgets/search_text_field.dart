import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_application/ui/utils/colors.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
    this.isStudentId = false,
    required this.obscureText,
    required this.onChanged,
    required this.icon,
  }) : super(key: key);

  final String hintText;
  final bool isStudentId;
  final bool obscureText;
  final TextInputType inputType;
  final ValueChanged onChanged;
  final Icon icon;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42.h,
      width: 240.w,
      child: TextField(
        onChanged: widget.onChanged,
        obscureText: widget.obscureText,
        controller: _controller,
        keyboardType: widget.inputType,
        textInputAction: TextInputAction.done,
        cursorHeight: 18,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          suffixIcon: widget.icon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16,
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
          fillColor: AppColors.c_102D53,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
