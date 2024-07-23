import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/notescuibt/notes_cubit.dart';
import 'package:note/models/notemodel.dart';

import 'ItemNote.dart';

class listviewb extends StatelessWidget {
  const listviewb({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes?? [];
         
        return ListView.builder(
          itemCount:notes.length ,
          itemBuilder: (BuildContext context, int index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ItemNote(
                note: notes[index],
              ),
            );
          },
        );
      },
    );
  }
}
