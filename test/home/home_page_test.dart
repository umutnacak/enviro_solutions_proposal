import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rb_reader/home/home.dart';
import 'package:rb_reader/login/login.dart';

import '../helpers/helpers.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders main layout', (tester) async {
      await tester.pumpApp(const HomePage());
      expect(find.byKey(const Key('LoginButton')), findsOneWidget);
    });

    testWidgets('goes to login page on login button tap', (tester) async {
      await tester.pumpApp(const HomePage());
      await tester.pumpAndSettle();
      final loginButton = find.byKey(const Key('LoginButton'));
      await tester.tap(loginButton);
      await tester.pumpAndSettle();
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
