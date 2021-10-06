import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/cardWidget.dart';
import 'package:adivinador_de_numeros/resources/cards_values.dart';
import 'package:adivinador_de_numeros/resources/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Game extends StatelessWidget {
  const Game({Key? key, this.next}) : super(key: key);

  final String? next;

  @override
  Widget build(BuildContext context) {
    int currentCard = Provider.of<GameProvider>(context).currentCard;
    /*
    if (next == 'y') {
      Provider.of<GameProvider>(context, listen: false).next(next ?? '');
    } else if (next == 'n') {
      Provider.of<GameProvider>(context, listen: false).next(next ?? '');
    }
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return const Game(next: 'n');
    }));
 */
    return Scaffold(
      body: SafeArea(
        child: Backgr(
          child: Column(
            children: [
              Text(
                'Tarjeta número $currentCard',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              CardWidget(
                  card: cards[currentCard.toString()]
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
                        Navigator.pushReplacementNamed(context, 'End');
                        Provider.of<GameProvider>(context, listen: false)
                            .next('y');
                      } else {
                        Navigator.pushReplacementNamed(context, 'Game');
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
                        Navigator.pushReplacementNamed(context, 'End');
                        Provider.of<GameProvider>(context, listen: false)
                            .next('n');
                      } else {
                        Navigator.pushReplacementNamed(context, 'Game');
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
