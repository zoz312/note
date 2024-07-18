import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/widgets/customappbar.dart';
import 'package:note/widgets/listviewb.dart';

import 'ItemNote.dart';

class BodyNotesView extends StatelessWidget {
  const BodyNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [CustoumAppBar(),
      listviewb()
         ],
      ),
    );
  }
}

