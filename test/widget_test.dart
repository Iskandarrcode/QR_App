import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_scaner/views/screens/qr_generate_screen/qr_generate.dart';

void main() {
  testWidgets("My App Test", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: QrGenerateScreen(),
      ),
    );
    expect(find.text("Generate QR"), findsOneWidget);
  });
}
