import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/notescuibt/notes_cubit.dart';
import 'package:note/models/notemodel.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/customappbar.dart';

class editNoteBody extends StatefulWidget {
  const editNoteBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<editNoteBody> createState() => _editNoteBodyState();
}

class _editNoteBodyState extends State<editNoteBody> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(children: [
        CustoumAppBar(
          onPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.Subtitle = contant ?? widget.note.Subtitle;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fatchallnode();
            Navigator.pop(context);
          },
          icon: Icon(Icons.done),
          text: "Edit Notes ",
        ),
        SizedBox(height: 30),
        customTextfiled(
          hintText: widget.note.title,
          onChanged: (p0) {
            title = p0;
          },
        ),
        SizedBox(
          height: 20,
        ),
        customTextfiled(
          hintText: widget.note.Subtitle,
          maxLines: 5,
          onChanged: (p0) {
            contant = p0;
          },
        ),
      ]),
    );
  }
}
