// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Backgr extends StatelessWidget {
  final String pic;

  final Widget? child;

  const Backgr({Key? key, required this.pic, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pic),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
