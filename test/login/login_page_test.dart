import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rb_reader/login/login.dart';

import '../helpers/helpers.dart';

void main() {
  group('LoginPage', () {
    testWidgets('renders login layout', (tester) async {
      await tester.pumpApp(const LoginPage());
      expect(find.byKey(const Key('TeamName')), findsOneWidget);
      expect(find.byKey(const Key('Token')), findsOneWidget);
    });
  });
}
