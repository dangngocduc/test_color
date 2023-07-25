// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_color/application.dart';

void main() {
  testWidgets('Screen have text : Hello there!', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Application());

    // Verify that this text display on screen
    expect(find.text('Hello there!'), findsOneWidget);
  });
  testWidgets('Tap to change color', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Application());

    final finder = find.byKey(const Key('color_box'));

    final colorBefore = finder.evaluate().single.widget as ColoredBox;

    // Tap screen
    await tester.tap(finder);

    await tester.pump();

    final colorAfter = finder.evaluate().single.widget as ColoredBox;

    //C heck color change after user click
    expect(colorAfter.color.value != colorBefore.color.value, true);
  });
}
