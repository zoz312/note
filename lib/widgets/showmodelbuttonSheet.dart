import 'package:flutter/material.dart';
import 'package:note/constans.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/custombutton.dart';

class ShowButtonModelsheet extends StatelessWidget {
  const ShowButtonModelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(children: [
      customTextfiled(hintText: "Title"),
       SizedBox(height: 20,),
       customTextfiled(hintText: "Content",maxLines: 5,),
       SizedBox(height: 150),
       custombutton()
       ]),
    );
  }

  OutlineInputBorder buildtextfiled([color]) {
    return OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          borderSide:BorderSide(color:color?? Colors.white,width: 2) 
        );
  }
}