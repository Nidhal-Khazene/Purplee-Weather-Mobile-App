import 'package:flutter_test/flutter_test.dart';
import 'package:purplee/main.dart';

void main() {
  testWidgets('App renders HomeView with SegmentedControl', (WidgetTester tester) async {
    await tester.pumpWidget(const Purplee());
    await tester.pumpAndSettle();

    expect(find.text('Hourly Forecast'), findsOneWidget);
    expect(find.text('Weekly Forecast'), findsOneWidget);
  });
}
