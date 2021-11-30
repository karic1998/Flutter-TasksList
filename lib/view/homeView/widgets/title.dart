// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tiitle extends StatelessWidget {
  const Tiitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: 0,
              right: 20,
            ),
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                'Tasks',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'List',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 0,
            ),
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
