import 'package:flutter/material.dart';

import 'ItemNote.dart';

class listviewb extends StatelessWidget {
  const listviewb({super.key});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: const EdgeInsets.symmetric(vertical:16.0),
                child: ItemNote(),
              );
            },
          ),
        );
  }
}