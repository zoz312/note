part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteloading extends AddNoteState {}

final class AddNotesucsses extends AddNoteState {}

final class AddNotefailire extends AddNoteState {
  final String errormassig;

  AddNotefailire(this.errormassig);
}
