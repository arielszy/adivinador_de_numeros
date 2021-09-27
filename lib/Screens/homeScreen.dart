// ignore_for_file: file_names

import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Backgr(
            pic: 'back.jpg',
          ),
          Center(
            child: Container(
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Adivinador de numeros',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.indigo[800],
                      ),
                    ),
                    Text(
                      'Bienvenido!\nEste juego adivinará el número que usted piense.\nSe le mostraràn 7 tarjetas con números y deberá indicar si está o no el que pensó.\nluego el programa le leerá la mente y verà en pantalla su número elegido!\nasí de simple.\n\nA JUGAR!!!',
                      //Comillas triples mantienen los saltos de linea. tambien se puede usar \n
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo[600],
                      ),
                    ),
                    const Btn(text: 'Iniciar juego',),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FloatingActionButton(
              backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
              tooltip: 'opciones',
              onPressed: () => Navigator.pushNamed(context, 'Configs'),
              child: Image.asset(
                'opt.png',
                height: 35,
                width: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
