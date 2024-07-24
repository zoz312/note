import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'notemodel.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject{
  @HiveField(0)
   String title;
  @HiveField(1)
   String Subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
    int color  ;

  NoteModel(
      {required this.title,
      required this.Subtitle,
      required this.date,
      required this.color });
}
