// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

List<Zadatak> zadaci = [];

List<Subtask> subtasks = [];
List<Subtask> copy_subtasks = [];
bool isChecked = false;
late String subtask_name;
final taskNameController = TextEditingController();
final subtaskNameController = TextEditingController();

class Zadatak {
  late String ime;
  late List<Subtask> podzadaci;

  Zadatak(this.ime, this.podzadaci);
}

class Subtask {
  late String subtask;
  bool isChecked = false;

  Subtask(this.subtask);
}
