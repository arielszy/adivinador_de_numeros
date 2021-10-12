import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:adivinador_de_numeros/Widgets/cardWidget.dart';
import 'package:adivinador_de_numeros/resources/cards_values.dart';
import 'package:adivinador_de_numeros/resources/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<GameProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Backgr(
          child: ListView(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Btn(
                  text: 'volver a empezar',
                  goto: 'HomeScreen',
                ),
              ),
              Text(
                'Tarjeta número ${prov.currentCard}',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              CardWidget(
                  card: cards[prov.currentCard.toString()]
                      .toString()), //hay que agregar toString por null safety. el mapa puede ser null pero Text() no
              Text(
                'El número que usted pensó se encuentra en esta tarjeta?',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  But(t: 'y'),
                  But(t: 'n'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
