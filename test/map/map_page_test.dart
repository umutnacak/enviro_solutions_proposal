import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rb_reader/map/map.dart';

import '../helpers/helpers.dart';

void main() {
  group('MapPage', () {
    testWidgets('renders map layout', (tester) async {
      await tester.pumpApp(const MapPage());
      expect(find.byKey(const Key('Map')), findsOneWidget);
    });
  });
}
