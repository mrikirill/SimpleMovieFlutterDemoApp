// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simple_movie/UI/main.dart';

void main() {
  testWidgets('Run Popular Movies Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    final list = find.byType(ListView);
    expect(list.evaluate().length, 1);
    expect(find.text('Load more movies'), findsOneWidget);
  });
}
