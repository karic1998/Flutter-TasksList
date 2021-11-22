// ignore_for_file: use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/main.dart';
import 'task.dart';
import 'zadatak.dart';

class Popup extends StatefulWidget {
  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return AlertDialog(
      //title: new Text("Alert Dialog title"),
      content: TextField(
        controller: myController,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), hintText: 'Item name'),
      ),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        new TextButton(
          child: new Text("Add"),
          onPressed: () {
            subtasks.add(Subtask(myController.text));
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
