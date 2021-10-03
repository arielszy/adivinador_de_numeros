import 'package:flutter/material.dart';
import 'package:adivinador_de_numeros/Screens/homeScreen.dart';
import 'package:adivinador_de_numeros/Screens/configs.dart';
import 'package:adivinador_de_numeros/Screens/game.dart';
import 'package:adivinador_de_numeros/Screens/end.dart';

void main() {
  runApp(const StartHere());
}

class StartHere extends StatelessWidget {
  const StartHere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adivinador De Numeros',
      debugShowCheckedModeBanner: false,
      supportedLocales: const <Locale>[Locale('en'), Locale('es')], //idiomas
      theme: ThemeData(
        fontFamily: 'mainFont',
        primarySwatch: Colors.blue,
      ),
      routes: {
        'HomeScreen': (context) => const HomeScreen(),
        'Configs': (context) => const Configs(),
        'Game': (context) => const Game(),
        'End': (context) => const End(),
      },
      initialRoute: 'HomeScreen',
    );
  }
}
