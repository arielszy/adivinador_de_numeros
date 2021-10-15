// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Backgr extends StatelessWidget {
//  final String pic;

  final Widget? child;

  const Backgr({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('../../assets/back.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            color: const Color.fromRGBO(255, 255, 255, 0.5),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: child,
            ),
          ),
        )
      ],
    );
  }
}
