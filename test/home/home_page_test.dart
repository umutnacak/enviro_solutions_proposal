import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rb_reader/home/home.dart';
import 'package:rb_reader/login/login.dart';
import 'package:rb_reader/map/map.dart';

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

    testWidgets('goes to map page on map button tap', (tester) async {
      await tester.pumpApp(const HomePage());
      await tester.pumpAndSettle();
      final mapButton = find.byKey(const Key('MapButton'));
      await tester.tap(mapButton);
      await tester.pumpAndSettle();
      expect(find.byType(MapPage), findsOneWidget);
    });
  });
}
