import 'package:flutter/material.dart';
import 'package:note/models/notemodel.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/edit_note_body.dart';

import '../widgets/customappbar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: 
        editNoteBody(note: note,),
      ),
    );
  }
}

