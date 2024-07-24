import 'package:flutter/material.dart';

import '../constans.dart';

class customTextfiled extends StatelessWidget {
  const customTextfiled(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.validator, this.onChanged});
  final String hintText;
  final void Function(String)? onChanged;
  final int maxLines;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged:onChanged ,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return " feild is required";
        }
      },
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
