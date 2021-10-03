// ignore_for_file: file_names

import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Backgr(
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
                'Bienvenido!\nEste juego adivinará el número que usted piense.\nPrimero que nada debe pensar un número entre 1 y 100.\nSe le mostrarán 7 tarjetas y deberá indicar si está o no el número que pensó.\nluego el programa le leerá la mente y verá en pantalla su número elegido!\nasí de simple.\n\nA JUGAR!!!',
                //Comillas triples mantienen los saltos de linea. tambien se puede usar \n
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo[600],
                ),
              ),
              const Btn(
                text: 'Iniciar juego',goto: 'Game',
              ),
            ],
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
    );
  }
}
