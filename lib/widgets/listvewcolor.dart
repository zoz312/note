import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubit/cubit/add_note_cubit.dart';
import 'package:note/widgets/itemColor.dart';

class listviewcolor extends StatefulWidget {
  const listviewcolor({super.key});

  @override
  State<listviewcolor> createState() => _listviewcolorState();
}

class _listviewcolorState extends State<listviewcolor> {
  int currentindex = 0;
  List<Color> colors = [
    Colors.amber,
    Colors.red,
    Colors.green,
    Colors.cyan,
    Colors.indigo,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
                onTap: () {
                  currentindex = index;
                  BlocProvider.of<AddNoteCubit>(context).colors =
                      colors[index];

                  setState(() {});
                },
                child: ItemColor(
                  color: colors[index],
                  choise: currentindex == index,
                )),
          );
        },
      ),
    );
  }
}
