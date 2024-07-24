import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:meta/meta.dart';
import 'package:note/constans.dart';
import 'package:note/models/notemodel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  
  List<NoteModel>? notes;
  fatchallnode() {
    var notebox = Hive.box<NoteModel>(kNotebox);
    notes = notebox.values.toList();
    emit(NotesSuccess());
  }
}
