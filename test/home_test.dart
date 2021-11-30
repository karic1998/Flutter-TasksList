// ignore_for_file: non_constant_identifier_names, unnecessary_new, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task/main.dart';
import 'package:task/view/taskView/pages/task.dart';
import 'package:task/view/homeView/pages/my_app.dart';

void main() {
  testWidgets('Home Page Widget Tests', (WidgetTester tester) async {
    await tester.pumpWidget(new MyApp());
    final title = find.text('Tasks');
    final title2 = find.text('List');
    final add_list_button = find.byType(IconButton);

    //Test prvog dijela naslova (Tasks). Da li je vidljiv, da li je font 25, da li je boldiran
    expect(title, findsOneWidget);
    expect(((tester.firstWidget(title) as Text).style)!.fontSize, 25);
    expect(((tester.firstWidget(title) as Text).style)!.fontWeight,
        FontWeight.bold);
    //Test drugog dijela naslova (List). Da li je vidljiv, da li je font 25, da li je FontWeight normalan
    expect(title2, findsOneWidget);
    expect(((tester.firstWidget(title2) as Text).style)!.fontSize, 25);
    expect(((tester.firstWidget(title2) as Text).style)!.fontWeight,
        FontWeight.normal);

    //Test teksta ispod buttona za dodavanje nove liste
    expect(find.text('Add List'), findsOneWidget);

    //Test bottom navigation bar
    expect(find.byIcon(Icons.home), findsOneWidget);
    expect(find.byIcon(Icons.calendar_today), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsOneWidget);

    //Test buttona za otvaranje narednog skrina
    expect(add_list_button, findsOneWidget);
    //await tester.tap(add_list_button.first);
  });
}
