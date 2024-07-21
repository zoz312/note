import 'package:flutter/material.dart';
import 'package:note/views/Note_view.dart';
import 'package:note/views/edit_note.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: ThemeData(brightness: Brightness.dark,
fontFamily: 'Poppins'),
    routes: {
        'note': (context) => NoteWiew(),
        'edit': (context) => EditNote(),
       
      },
      initialRoute: 'note'

    );
  }
}