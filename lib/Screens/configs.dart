// ignore_for_file: file_names

import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:flutter/material.dart';

class Configs extends StatelessWidget {
  const Configs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Backgr(
      child: Btn(text: 'volver', goto: 'HomeScreen',),
    );
  }
}
