import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note/constans.dart';
import 'package:note/cubit/cubit/add_note_cubit.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/custombutton.dart';
import 'package:note/widgets/formbuttonsheet.dart';

class ShowButtonModelsheet extends StatelessWidget {
  const ShowButtonModelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNotefailire) {
            print("failed${state.errormassig}");
          }
          if (state is AddNotesucsses) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteloading ? true:false,
            child: Padding(padding: EdgeInsets.only(left:10,right: 10,top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
              child: newformwedgit()));
        },
      ),
    );
  }

  OutlineInputBorder buildtextfiled([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}
