import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note/constans.dart';
import 'package:note/models/notemodel.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addnte(NoteModel note) async {
    emit(AddNoteloading());
    try {
      var box = Hive.box<NoteModel>(kNotebox);
      emit(AddNotesucsses());
      await box.add(note);
    }  catch (e) {
      emit(AddNotefailire(e.toString()));
    }
  }
}
