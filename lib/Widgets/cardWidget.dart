// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String card;

  const CardWidget({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('../../assets/card.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Text(
          card,
          style: TextStyle(
            color: Colors.blue[800],
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
