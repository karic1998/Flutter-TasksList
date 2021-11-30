// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/view/popupView/pages/pop_up.dart';

class OpenPopup extends StatefulWidget {
  const OpenPopup({Key? key}) : super(key: key);

  @override
  _OpenPopupState createState() => _OpenPopupState();
}

class _OpenPopupState extends State<OpenPopup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.bottomRight,
      margin: EdgeInsets.only(right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent,
      ),
      child: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) => Popup(),
          ).then((value) {
            setState(() {});
          });
        },
        icon: Icon(Icons.add),
      ),
    );
  }
}
