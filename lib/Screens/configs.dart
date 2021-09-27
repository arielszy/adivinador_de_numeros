// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Configs extends StatelessWidget {
  const Configs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: FloatingActionButton(
      onPressed: () => Navigator.pop(context),
      child: const Icon(Icons.backspace),
    )));
  }
}
