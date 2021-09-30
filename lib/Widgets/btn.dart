// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String text;

  const Btn({
    Key? key,
    required this.text,
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
          onPressed: () => Navigator.pushNamed(context, 'Game'),
        ),
      ),
    );
  }
}
