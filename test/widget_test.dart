import 'package:flutter_test/flutter_test.dart';
import 'package:app16/main.dart';

void main() {
  testWidgets('ChronosLog renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const ChronosLogApp());
    expect(find.byType(ChronosLogApp), findsOneWidget);
  });
}
