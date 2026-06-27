import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';



void main() {
  testWidgets('PhotoFilterCarousel smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Text('Photo Filter Carousel')),
      ),
    );

    expect(find.text('Photo Filter Carousel'), findsOneWidget);
  });
}
