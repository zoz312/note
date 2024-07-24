import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/notescuibt/notes_cubit.dart';
import 'package:note/models/notemodel.dart';

import 'package:note/widgets/customappbar.dart';
import 'package:note/widgets/listviewb.dart';

class BodyNotesView extends StatefulWidget {
  const BodyNotesView({super.key});

  @override
  State<BodyNotesView> createState() => _BodyNotesViewState();
}

class _BodyNotesViewState extends State<BodyNotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fatchallnode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          CustoumAppBar(
            onPressed: (){
              
            },
            icon: Icon(Icons.search),
            text: "Notes",
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(child: listviewb())
        ],
      ),
    );
  }
}
