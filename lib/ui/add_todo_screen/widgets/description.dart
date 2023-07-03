import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_screen_homework/ui/utils/colors.dart';

class Description extends StatefulWidget {
  const Description({Key? key, required this.taskName, required this.icon}) : super(key: key);

  final String taskName;
  final Icon icon;

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  final _textController = TextEditingController();
  final _maxCharactersPerLine = 20;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 126,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.C_102D53,
          ),
          child: TextField(
            controller: _textController,
            cursorColor: AppColors.white,
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: AppColors.white,
            ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(_maxCharactersPerLine),
              _NewlineTextInputFormatter(_maxCharactersPerLine),
            ],
            decoration: InputDecoration(
              hintText: widget.taskName,
              prefixIcon: widget.icon,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.white.withOpacity(0.8),
              ),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.C_102D53,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.C_102D53,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: AppColors.C_102D53,
            ),
          ),
        ),
      ],
    );
  }
}

class _NewlineTextInputFormatter extends TextInputFormatter {
  final int maxCharactersPerLine;

  _NewlineTextInputFormatter(this.maxCharactersPerLine);

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = _addNewlines(newValue.text);
    return newValue.copyWith(text: newText, composing: TextRange.empty);
  }

  String _addNewlines(String text) {
    final buffer = StringBuffer();
    var lineCount = 0;
    for (var i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      lineCount++;
      if (lineCount == maxCharactersPerLine && i != text.length - 1) {
        buffer.writeln();
        lineCount = 0;
      }
    }
    return buffer.toString();
  }
}
