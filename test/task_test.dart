// ignore_for_file: non_constant_identifier_names, unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/main.dart';
import 'package:task/view/taskView/pages/task.dart';
import 'package:task/view/homeView/pages/my_app.dart';
import 'package:task/view/taskView/widgets/task_name_input.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Task Widget Tests (Add task)', (WidgetTester tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: new Task()));
    final text_input = find.byType(TextField);
    final icon_buttons = find.byType(IconButton);

    expect(text_input, findsOneWidget);
    await tester.enterText(text_input, 'Novi zadatak');
    expect(find.text('Novi zadatak'), findsOneWidget);
    expect(icon_buttons, findsNWidgets(2));
  });
}
