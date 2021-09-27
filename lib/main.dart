import 'package:flutter/material.dart';
import 'package:adivinador_de_numeros/Screens/homeScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adivinador_de_numeros/Screens/configs.dart';

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
      theme: ThemeData(
        //google fonts
        textTheme: GoogleFonts.imFellEnglishScTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      routes: {
        'HomeScreen': (context) => const HomeScreen(),
        'Configs': (context) => const Configs(),
      },
      home: const SafeArea(child: HomeScreen()),
    );
  }
}
