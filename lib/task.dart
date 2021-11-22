// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:task/data.dart';
import 'package:task/main.dart';
import 'package:task/pop_up.dart';
import 'package:task/zadatak.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: <Widget>[
              Container(
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
                        zadaci.add(
                            Zadatak(myController.text, List.from(subtasks)));
                        subtasks.clear();
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.cancel),
                    ),
                  ],
                ),
              ),
              Container(
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
                        controller: myController,
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
              ),
              Container(
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
              ),
            ],
          ),
          Container(
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
          ),
        ],
      ),
    );
  }
}
