import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/cubit/add_note_cubit.dart';
import 'package:note/models/notemodel.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/custombutton.dart';
import 'package:intl/intl.dart';
import 'package:note/widgets/itemColor.dart';
import 'package:note/widgets/listvewcolor.dart';

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
  String date = DateTime.now().hour.toString();
    String date1 = DateTime.now().minute.toString();
  String date2 = DateTime.now().day.toString();
  String date3 = DateTime.now().month.toString();
  String date4 = DateTime.now().year.toString();
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
          ),const SizedBox(height: 40),
          listviewcolor(),
          const SizedBox(height: 40),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return custombutton(
                loading: state is AddNoteloading ? true : false,
                onPressed: () {
                  if (FormKey.currentState!.validate()) {
                    FormKey.currentState!.save();
                    var notemodel = NoteModel(
                        title: title!,
                        Subtitle: subtitle!,
                        date: '${date4}' +'-' +  '${date3}'+'-' + '${date2}' + '   ' + '${date}' + ':'+'${date1}',
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
