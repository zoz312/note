import 'package:flutter/material.dart';
import 'package:note/constans.dart';
import 'package:note/widgets/customTextfiled.dart';
import 'package:note/widgets/custombutton.dart';

class ShowButtonModelsheet extends StatelessWidget {
  const ShowButtonModelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: newformwedgit(),
    );
  }

  OutlineInputBorder buildtextfiled([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white, width: 2));
  }
}

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
        custombutton(
          onPressed: () {
            if (FormKey.currentState!.validate()) {
              FormKey.currentState!.save();
            } else {
              mode = AutovalidateMode.always;
              setState(() {
                
              });
            }
          },
        )
      ]),
    );
  }
}
