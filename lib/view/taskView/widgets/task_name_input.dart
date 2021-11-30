// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/data.dart';

class InputTaskName extends StatefulWidget {
  const InputTaskName({Key? key}) : super(key: key);

  @override
  _InputTaskNameState createState() => _InputTaskNameState();
}

class _InputTaskNameState extends State<InputTaskName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              bottom: 5,
            ),
            child: TextField(
              controller: taskNameController,
              decoration: const InputDecoration(
                  //border: OutlineInputBorder(),
                  hintText: 'Task Name'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: Text(
              '2 of 6 tasks completed',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
