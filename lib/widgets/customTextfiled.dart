import 'package:flutter/material.dart';

import '../constans.dart';

class customTextfiled extends StatelessWidget {
  const customTextfiled({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: const Color(0xff62FCD7),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kprimarycolor),
          enabledBorder: buildtextfiled(),
          border: buildtextfiled(),
          focusedBorder: buildtextfiled(kprimarycolor)),
    );
  }

  OutlineInputBorder buildtextfiled([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}
