// ignore_for_file: file_names

import 'package:adivinador_de_numeros/resources/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('btn.png'),
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
              color: Colors.indigo[800],
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(goto);
            Provider.of<GameProvider>(context, listen: false).reset();
          },
        ),
      ),
    );
  }
}
