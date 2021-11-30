// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task/data.dart';

class MappingData extends StatefulWidget {
  const MappingData({Key? key}) : super(key: key);

  @override
  _MappingDataState createState() => _MappingDataState();
}

class _MappingDataState extends State<MappingData> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          left: 100,
        ),
        child: Container(
          margin: EdgeInsets.only(right: 15, bottom: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: zadaci.map((e) {
                return SingleChildScrollView(
                  child: Container(
                    width: 150,
                    height: 350,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      border: Border.all(width: 2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 5, top: 5),
                            child: Text(e.ime)),
                        Column(
                          children: e.podzadaci.map((e) {
                            return Row(
                              children: [
                                Checkbox(
                                  value: e.isChecked,
                                  onChanged: (value) {},
                                ),
                                Text(e.subtask),
                              ],
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
