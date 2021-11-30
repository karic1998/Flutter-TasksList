// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/services/example.dart';

class AppBar2 extends StatefulWidget {
  const AppBar2({Key? key}) : super(key: key);

  @override
  _AppBar2State createState() => _AppBar2State();
}

class _AppBar2State extends State<AppBar2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            //alignment: Alignment.topLeft,
            padding: EdgeInsets.all(20),
            height: 100,
            width: 100,
            child: Image(
              image: AssetImage('assets/triangle.jfif'),
            ),
          ),
          IconButton(
            onPressed: () {
              Services().createSubTask(context, taskNameController.text);
              setState(() {});
            },
            icon: Icon(Icons.cancel),
          ),
        ],
      ),
    );
  }
}
