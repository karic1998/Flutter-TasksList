// ignore_for_file: use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors, duplicate_ignore, unused_import

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/main.dart';
import 'package:task/services/example.dart';
import 'package:task/view/popupView/widgets/alert_dialog.dart';

class Popup extends StatefulWidget {
  @override
  _PopupState createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return AlertDialogPopup();
  }
}
