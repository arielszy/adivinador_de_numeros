// ignore_for_file: file_names

import 'package:adivinador_de_numeros/Widgets/backgr.dart';
import 'package:adivinador_de_numeros/Widgets/btn.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Backgr(
              child: FittedBox(
                //tamaño dinamico en funcion de la pantalla
                fit: BoxFit.cover,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Adivinador de numeros\n',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.indigo[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Bienvenido! \nEste juego adivinará el número que usted piense. \nPrimero que nada debe pensar un número entre 1 y 100 .\nSe le mostrarán 7 tarjetas y deberá indicar\n si está o no el número que pensó .\nluego el programa le leerá la mente y verá\n en pantalla su número elegido!así de simple.\n\nA JUGAR!!!\n',
                      //Comillas triples mantienen los saltos de linea. tambien se puede usar \n
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Btn(
                      text: 'Iniciar juego',
                      goto: 'Game',
                    ),
                  ],
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
                  'assets/opt.png',
                  height: 35,
                  width: 35,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
