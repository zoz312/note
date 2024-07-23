import 'package:flutter/material.dart';

class CustoumAppBar extends StatelessWidget {
  const CustoumAppBar({super.key, required this.icon, required this.text});
  final Icon icon;
  final String text;

  @override

  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        text,
        style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.05) ,
        ),
        width: 47,
        height: 47,
        child: IconButton(
            onPressed: () {
              
             
            },
            icon: icon),
      )
    ]);
  }
}
