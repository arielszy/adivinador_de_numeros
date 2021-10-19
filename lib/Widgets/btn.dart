// ignore_for_file: file_names

import 'package:adivinador_de_numeros/resources/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//main button
class Btn extends StatelessWidget {
  final String text;
  final String goto;

  const Btn({
    Key? key,
    required this.text,
    required this.goto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/btn.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: TextButton(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[50],
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(goto);
              Provider.of<GameProvider>(context, listen: false).reset();
            },
          ),
        ),
      ),
    );
  }
}

// yes or no button
class But extends StatelessWidget {
  const But({Key? key, required this.t}) : super(key: key);
  final String t;
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<GameProvider>(context, listen: false);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        elevation: 0,
        onPrimary: Colors.transparent,
        onSurface: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100))),
      ),
      onPressed: () {
        prov.currentCard == 7
            ? Navigator.pushReplacementNamed(context, 'End')
            : Navigator.pushReplacementNamed(context, 'Game');
        prov.next(t);
      },
      child: Image.asset(
        'assets/$t.png',
        width: 75,
        height: 75,
      ),
    );
  }
}
