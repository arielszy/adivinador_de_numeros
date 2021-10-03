import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:adivinador_de_numeros/Widgets/cardWidget.dart';
import 'package:adivinador_de_numeros/resources/cards_values.dart';
import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Backgr(
      child: Column(
        children: [
          CardWidget(
              card: cards['1']
                  .toString()), //hay que agregar toString por null safety. el mapa puede ser null pero Text() no
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'y.png',
                width: 75,
                height: 75,
              ),
              Image.asset(
                'n.png',
                width: 75,
                height: 75,
              ),
            ],
          )
        ],
      ),
    );
  }
}
