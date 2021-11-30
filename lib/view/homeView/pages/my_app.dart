// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:task/view/taskView/pages/task.dart';
import 'package:task/view/homeView/widgets/app_bar.dart';
import 'package:task/view/homeView/widgets/bottom_nav_bar.dart';
import 'package:task/view/homeView/widgets/mapping_tasks.dart';
import 'package:task/view/homeView/widgets/title.dart';

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
                appBar(),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Tiitle(),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
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
                MappingData()
              ],
            ),
          ),
          bottomNavigationBar: BnavBar()),
    );
  }
}
