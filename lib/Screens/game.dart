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
    int currentCard = Provider.of<GameProvider>(context).currentCard;
    return Scaffold(
      body: SafeArea(
        child: Backgr(
          child: Column(
            children: [
              CardWidget(
                  card: cards[currentCard.toString()]
                      .toString()), //hay que agregar toString por null safety. el mapa puede ser null pero Text() no
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      onPrimary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                    ),
                    onPressed: () {
                      if (currentCard == 7) {
                        Provider.of<GameProvider>(context, listen: false)
                            .next('y');
                        Navigator.pushReplacementNamed(context, 'End');
                      } else {
                        Provider.of<GameProvider>(context, listen: false)
                            .next('y');
                      }
                    },
                    child: Image.asset(
                      'y.png',
                      width: 75,
                      height: 75,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      onPrimary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                    ),
                    onPressed: () {
                      if (currentCard == 7) {
                        Provider.of<GameProvider>(context, listen: false)
                            .next('n');
                        Navigator.pushReplacementNamed(context, 'End');
                      } else {
                        Provider.of<GameProvider>(context, listen: false)
                            .next('n');
                      }
                    },
                    child: Image.asset(
                      'n.png',
                      width: 75,
                      height: 75,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
