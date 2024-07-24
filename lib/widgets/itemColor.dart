import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.choise, required this.color});
  final bool choise;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return choise
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}
