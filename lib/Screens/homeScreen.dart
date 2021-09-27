// ignore_for_file: file_names

import 'package:adivinador_de_numeros/Widgets/backgr.dart';
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
                      'Bienvenido!\nEste juego adivinará el número que usted piense.\nSe le mostraran 7 tarjetas con números y debera indicar si esta o no el que penso.\nluego el programa le leera la mente y vera en pantalla su numero elegido!\nasi de simple.\n\nA JUGAR!!!', 
                      //Comillas triples mantienen los saltos de linea. tambien se puede usar \n
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo[600],
                      ),
                    ),
                    Backgr(
                      pic: 'btn.png',
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextButton(
                          child: Text(
                            'iniciar juego',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.indigo[800],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'HomeScreen'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
