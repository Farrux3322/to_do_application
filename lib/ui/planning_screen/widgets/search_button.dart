import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchController = TextEditingController();
  bool _isTextFieldEnabled = true;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 42,
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            cursorColor: AppColors.white,
            textInputAction: TextInputAction.search,
            keyboardType: TextInputType.text,
            controller: _searchController,
            enabled: _isTextFieldEnabled,
            style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: AppColors.white),
            decoration: InputDecoration(
              hintText: 'Search by task title',
              suffixIcon: Icon(Icons.search,color: AppColors.white.withOpacity(0.6),),
              hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: AppColors.white.withOpacity(0.6)),
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



// ElevatedButton(
//   onPressed: () {
//     setState(() {
//       _isTextFieldEnabled = !_isTextFieldEnabled; // Toggle the enabled state
//     });
//   },
//   child: Text(_isTextFieldEnabled ? 'Disable' : 'Enable'), // Toggle button label
// ),