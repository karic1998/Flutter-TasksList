import 'package:flutter/material.dart';
import 'package:task/data.dart';

class Services {
  void createSubTask(context, txt) {
    subtasks.add(Subtask(txt));
    Navigator.of(context).pop();
  }

  void createNewTask(context, txt) {
    zadaci.add(Zadatak(txt, List.from(subtasks)));
    subtasks.clear();
    Navigator.of(context).pop();
  }
}
