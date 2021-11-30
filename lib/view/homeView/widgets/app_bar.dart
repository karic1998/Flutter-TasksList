// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //alignment: Alignment.topLeft,
        padding: EdgeInsets.all(20),
        height: 100,
        width: 100,
        child: Image(
          image: AssetImage('assets/triangle.jfif'),
        ),
      ),
    );
  }
}
