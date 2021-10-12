import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/cardWidget.dart';
import 'package:adivinador_de_numeros/resources/cards_values.dart';
import 'package:adivinador_de_numeros/resources/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<GameProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Backgr(
          child: Column(
            children: [
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
                children: [
                  But(prov: prov, t: 'y'),
                  But(prov: prov, t: 'n'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class But extends StatelessWidget {
  const But({Key? key, required this.prov, required this.t}) : super(key: key);
  final prov;
  final String t;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        onPrimary: Colors.transparent,
        onSurface: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100))),
      ),
      onPressed: () {
        prov.currentCard == 7
            ? Navigator.pushReplacementNamed(context, 'End')
            : Navigator.pushReplacementNamed(context, 'Game');
        prov.next(t);
      },
      child: Image.asset(
        '$t.png',
        width: 75,
        height: 75,
      ),
    );
  }
}
