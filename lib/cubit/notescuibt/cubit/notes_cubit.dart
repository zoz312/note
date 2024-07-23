import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';

import 'package:meta/meta.dart';
import 'package:note/constans.dart';
import 'package:note/models/notemodel.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fatchallnode(){
      emit(Notesloading());
    try {
      var notebox = Hive.box<NoteModel>(kNotebox);
      
  
       
      emit(Notessuccess(notebox.values.toList()));
    } catch (e) {
        
      emit(Notesfailrue(e.toString()));
    }
  }
}
