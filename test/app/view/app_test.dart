import 'package:flutter_test/flutter_test.dart';
import 'package:rb_reader/app/app.dart';
import 'package:rb_reader/home/home.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
