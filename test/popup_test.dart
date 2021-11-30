// ignore_for_file: non_constant_identifier_names, unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/main.dart';
import 'package:task/view/popupView/pages/pop_up.dart';
import 'package:task/view/taskView/pages/task.dart';
import 'package:task/view/homeView/pages/my_app.dart';
import 'package:task/view/taskView/widgets/task_name_input.dart';

void main() {
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Popup Widget Tests (Add subtasks)', (WidgetTester tester) async {
    //await tester.pumpWidget(new Task());
    await tester.pumpWidget(createWidgetForTesting(child: new Popup()));
    final text_input = find.byType(TextField);
    final icon_button = find.byType(TextButton);

    expect(text_input, findsOneWidget);
    await tester.enterText(text_input, 'Novi podzadatak');
    expect(find.text('Novi podzadatak'), findsOneWidget);
    expect(icon_button, findsOneWidget);
  });
}
