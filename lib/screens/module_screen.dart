import 'package:d2ychecklist/components/done_module_list.dart';
import 'package:d2ychecklist/components/module_list.dart';
import 'package:flutter/material.dart';

class ModuleScreen extends StatelessWidget {
  const ModuleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemrograman Dart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.check_box),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DoneModuleList(),
                ),
              );
            },
          ),
        ],
      ),
      body: ModuleList(),
    );
  }
}
