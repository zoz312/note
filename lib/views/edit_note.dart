import 'package:flutter/material.dart';
import 'package:note/widgets/customTextfiled.dart';

import '../widgets/customappbar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: 
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children:[
           CustoumAppBar(icon: Icon(Icons.done),text: "Edit Notes ",),
            SizedBox(height: 30),
           customTextfiled(hintText: "Title"),
       SizedBox(height: 20,),
       customTextfiled(hintText: "Content",maxLines: 5,),
      
              ]  ),
        ),
      ),
    );
  }
}