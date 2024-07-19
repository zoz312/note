import 'package:flutter/material.dart';

import '../constans.dart';

class custombutton extends StatelessWidget {
  const custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: (){}, child: Text('Add',style: TextStyle(color: Colors.black,fontSize: 17),), style: ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 180,vertical: 10)),
          backgroundColor: MaterialStatePropertyAll(kprimarycolor),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),)
        ;
  }
}