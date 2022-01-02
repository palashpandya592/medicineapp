// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medicine_app/utils/validation/validation_class.dart';

import 'package:medicine_app/ui/views/login/login.dart';

void main() {
  group('Login Module', () {
  test('Empty Email Test', () {
    var result = validFunemail('');
    expect(result, 'please enter email address');
  });
  test('Valid Email Test', () {
    var result = validFunemail('abc@gmail.com');
    expect(result, null);
  });
  testWidgets('Mobile and password filled OK', (WidgetTester tester) async {
    var app = const MediaQuery(data: MediaQueryData(), child: MaterialApp(home: Login()));
    await tester.pumpWidget(app);

    Finder email = find.byKey(const Key('mobile'));
    Finder pwd = find.byKey(const Key('password'));

    await tester.enterText(email, "7567055592");
    await tester.enterText(pwd, "Pa&&word123");
    await tester.pump();

    Finder formWidgetFinder = find.byType(Form);
    Form formWidget = tester.widget(formWidgetFinder) as Form;
    GlobalKey<FormState> formKey = formWidget.key as GlobalKey<FormState>;

    expect(formKey.currentState?.validate(), isTrue);
  });
  testWidgets('Mobile  and password filled wrong data', (WidgetTester tester) async {
    var app = const MediaQuery(data: MediaQueryData(), child: MaterialApp(home: Login()));
    await tester.pumpWidget(app);

    Finder email = find.byKey(const Key('mobile'));
    Finder pwd = find.byKey( const Key('password'));

    await tester.enterText(email, "7567055592");
    await tester.enterText(pwd, "123456");
    await tester.pump();

    Finder formWidgetFinder = find.byType(Form);
    Form formWidget = tester.widget(formWidgetFinder) as Form;
    GlobalKey<FormState> formKey = formWidget.key as GlobalKey<FormState>;

    expect(formKey.currentState?.validate(), isFalse);
  });
  });
}
