// ignore_for_file: unused_import

import 'package:flutter/material.dart';

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
