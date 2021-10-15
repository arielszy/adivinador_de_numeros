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
          child: FittedBox(
            fit: BoxFit.cover,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'El número pensado es...',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 350,
                  height: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('../../assets/win.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Center(
                      child: Text(
                        numberGuessed.toString(),
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.brown[100],
                        ),
                      ),
                    ),
                  ),
                ),
                const Btn(
                  text: 'reiniciar',
                  goto: 'HomeScreen',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
