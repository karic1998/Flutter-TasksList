// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:task/data.dart';

class MapingSubtasks extends StatefulWidget {
  const MapingSubtasks({Key? key}) : super(key: key);

  @override
  _MapingSubtasksState createState() => _MapingSubtasksState();
}

class _MapingSubtasksState extends State<MapingSubtasks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        left: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: subtasks.map((e) {
          return Row(
            children: [
              Checkbox(
                value: e.isChecked,
                onChanged: (value) {
                  setState(() {
                    e.isChecked = !e.isChecked;
                  });
                },
              ),
              Text(e.subtask),
            ],
          );
        }).toList(),
      ),
    );
  }
}
