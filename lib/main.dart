import 'package:d2ychecklist/provider/done_module_provider.dart';
import 'package:d2ychecklist/screens/module_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModuleProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'D2YCHECKLIST',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ModuleScreen(),
      ),
    );
  }
}
