import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sleepholic/login/login_screen.dart';

void main(){

  testWidgets('Login screen', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    final textFinder = find.text('Login');

    expect(textFinder, findsWidgets);
  });
}