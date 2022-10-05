import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:ios_test_issue_demo/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('tests', () {
    testWidgets('button exists', (widgetTester) async {
      app.main();

      await widgetTester.pumpAndSettle();

      expect(find.byType(ElevatedButton), findsOneWidget);
    });
  });
}