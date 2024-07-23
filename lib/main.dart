import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
//import 'package:hive_flutter/hive_flutter.dart';

import 'package:note/constans.dart';
import 'package:note/cubit/cubit/add_note_cubit.dart';
import 'package:note/cubit/notescuibt/notes_cubit.dart';
import 'package:note/models/notemodel.dart';
import 'package:note/plocobserver.dart';
import 'package:note/views/Note_view.dart';
import 'package:note/views/edit_note.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = observer();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotebox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          routes: {
            'note': (context) => NoteWiew(),
            'edit': (context) => EditNote(),
          },
          initialRoute: 'note'),
    );
  }
}
