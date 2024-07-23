import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/cubit/add_note_cubit.dart';
import 'package:note/models/notemodel.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/custombutton.dart';

class newformwedgit extends StatefulWidget {
  const newformwedgit({
    super.key,
  });

  @override
  State<newformwedgit> createState() => _newformwedgitState();
}

class _newformwedgitState extends State<newformwedgit> {
  final GlobalKey<FormState> FormKey = GlobalKey();
  AutovalidateMode mode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: FormKey,
      autovalidateMode: mode,
      child: SizedBox(
        height: 450,
        child: ListView(children: [
          customTextfiled(
            hintText: "Title",
            onSaved: (p0) {
              title = p0;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          customTextfiled(
            hintText: "Content",
            maxLines: 5,
            onSaved: (p0) {
              subtitle = p0;
            },
          ),
          const SizedBox(height: 150),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return custombutton(
                loading: state is AddNoteloading? true : false,
                onPressed: () {
                  if (FormKey.currentState!.validate()) {
                    FormKey.currentState!.save();
                    var notemodel = NoteModel(
                        title: title!,
                        Subtitle: subtitle!,
                        date: DateTime.now().toString(),
                        color: Colors.amber.value);
                    BlocProvider.of<AddNoteCubit>(context).addnte(notemodel);
                  } else {
                    mode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          )
        ]),
      ),
    );
  }
}
