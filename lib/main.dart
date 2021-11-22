// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unnecessary_new

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:task/task.dart';
import 'zadatak.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(
    title: 'Task Manager',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  //alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(20),
                  height: 100,
                  width: 100,
                  child: Image(
                    image: AssetImage('assets/triangle.jfif'),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Row(
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
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Task()),
                                ).then((value) {
                                  setState(() {});
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ),
                          Text(
                            'Add List',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
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
                                color: Colors.primaries[
                                    Random().nextInt(Colors.primaries.length)],
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
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Calendar',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
