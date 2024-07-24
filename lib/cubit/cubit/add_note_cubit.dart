import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note/constans.dart';
import 'package:note/models/notemodel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
 Color? colors =  Colors.blue ;
  addnte(NoteModel note) async { 
  note.color = colors!.value ;
    emit(AddNoteloading());
    try {
      var notebox = Hive.box<NoteModel>(kNotebox);

      await notebox.add(note);
      emit(AddNotesucsses());
    } catch (e) {
      emit(AddNotefailire(e.toString()));
    }
  }
}
