import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/notescuibt/notes_cubit.dart';
import 'package:note/models/notemodel.dart';
import 'package:note/views/edit_note.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNote(note: note,);
        }));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fatchallnode();
                    },
                    icon: Icon(
                      CupertinoIcons.delete_solid,
                      color: Colors.black,
                      size: 30,
                    )),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  note.Subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black.withOpacity(.4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
