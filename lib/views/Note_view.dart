import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/notescuibt/notes_cubit.dart';
import 'package:note/widgets/body_note_view.dart';
import 'package:note/widgets/showmodelbuttonSheet.dart';

class NoteWiew extends StatelessWidget {
  const NoteWiew({super.key});
//   */

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BodyNotesView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return ShowButtonModelsheet();
                });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
