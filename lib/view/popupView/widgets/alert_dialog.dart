// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/services/example.dart';

class AlertDialogPopup extends StatefulWidget {
  const AlertDialogPopup({Key? key}) : super(key: key);

  @override
  _AlertDialogPopupState createState() => _AlertDialogPopupState();
}

class _AlertDialogPopupState extends State<AlertDialogPopup> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //title: new Text("Alert Dialog title"),
      content: TextField(
        controller: subtaskNameController,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), hintText: 'Item name'),
      ),
      actions: <Widget>[
        // usually buttons at the bottom of the dialog
        // ignore: unnecessary_new
        new TextButton(
          // ignore: unnecessary_new
          child: new Text("Add"),
          onPressed: () {
            Services().createSubTask(context, subtaskNameController.text);
          },
        ),
      ],
    );
  }
}
