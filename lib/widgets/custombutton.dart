import 'package:flutter/material.dart';

import '../constans.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key, required this.onPressed, required this.loading});
  final void Function() onPressed;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: loading ? CircularProgressIndicator(color: Colors.black,) :Text(
        'Add',
        style: TextStyle(color: Colors.black, fontSize: 17),
      ),
      style: ButtonStyle(
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 170, vertical: 10)),
          backgroundColor: MaterialStatePropertyAll(kprimarycolor),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
    );
  }
}
