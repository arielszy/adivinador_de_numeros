import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:adivinador_de_numeros/resources/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class End extends StatelessWidget {
  const End({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberGuessed =
        Provider.of<GameProvider>(context, listen: false).numberGuessed;
    return Scaffold(
      body: SafeArea(
        child: Backgr(
          child: Column(
            children: [
              Text(numberGuessed.toString()),
              const Btn(
                text: 'reiniciar',
                goto: 'HomeScreen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
