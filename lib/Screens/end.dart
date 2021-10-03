import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:flutter/material.dart';

class End extends StatelessWidget {
  const End({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Backgr(
      child: Btn(
        text: 'reiniciar',
        goto: 'HomeScreen',
      ),
    );
  }
}
