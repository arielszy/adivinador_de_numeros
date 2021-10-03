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
      supportedLocales: const <Locale>[Locale('en'), Locale('es')],
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
      home: const A(),
    );
  }
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
