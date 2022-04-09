import 'package:d2ychecklist/provider/done_module_provider.dart';
import 'package:d2ychecklist/screens/module_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

Widget createHomeScreen() => ChangeNotifierProvider<DoneModuleProvider>(
      create: (context) => DoneModuleProvider(),
      child: const MaterialApp(
        home: ModuleScreen(),
      ),
    );

void main() {
  group('Module List Page Widget Test : ', () {
    testWidgets('Testing if ListView shows up', (WidgetTester tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('Test Done Button', (WidgetTester tester) async {
      // Me-Render Widget
      await tester.pumpWidget(createHomeScreen());
      // Mencari ElevatedButton pertama kemudian melakukan gesture tap
      await tester.tap(find.byType(ElevatedButton).first);
      // Rebuild tampilan karena perubahan state
      await tester.pumpAndSettle();
      // Verifikasi apakah ditemukan 2 icon done (Termasuk ikon done yang berada di AppBar)
      expect(find.byIcon(Icons.done), findsNWidgets(2));
    });
  });
}
