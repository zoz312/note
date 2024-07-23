part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class Notesloading extends NotesState {}

final class Notessuccess extends NotesState {
  final List<NoteModel> notes;

  Notessuccess(this.notes);
}

final class Notesfailrue extends NotesState {
  final String errormassge;

  Notesfailrue(this.errormassge);
}
