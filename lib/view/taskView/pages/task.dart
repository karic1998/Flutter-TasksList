// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/main.dart';
import 'package:task/services/example.dart';
import 'package:task/view/popupView/pages/pop_up.dart';
import 'package:task/view/taskView/widgets/app_bar_2.dart';
import 'package:task/view/taskView/widgets/mapping_subtasks.dart';
import 'package:task/view/taskView/widgets/open_popup.dart';
import 'package:task/view/taskView/widgets/task_name_input.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: <Widget>[
              AppBar2(),
              InputTaskName(),
              MapingSubtasks(),
            ],
          ),
          OpenPopup(),
        ],
      ),
    );
  }
}
