import 'package:flutter/material.dart';
import 'package:note/widgets/body_note_view.dart';

class NoteWiew extends StatelessWidget {
  const NoteWiew({super.key});
//   */
      
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: BodyNotesView()
      ),
    );
  }
}