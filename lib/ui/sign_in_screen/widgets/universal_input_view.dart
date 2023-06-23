import 'package:flutter/material.dart';


class UniversalInputView extends StatefulWidget {
  const UniversalInputView({
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
  State<UniversalInputView> createState() => _UniversalInputViewState();
}

class _UniversalInputViewState extends State<UniversalInputView> {

  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          TextField(
            onChanged: widget.onChanged,
            obscureText: widget.obscureText,
            controller: _controller,
            keyboardType: widget.inputType,
            textInputAction: TextInputAction.done,
            cursorHeight: 18,
            style:const  TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              prefixIcon: widget.icon,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:
                  const BorderSide(width: 1, color: Color(0xFFCBD5E1))),
            ),
          )
        ],
      ),
    );
  }
}