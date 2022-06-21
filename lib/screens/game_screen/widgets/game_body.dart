import 'package:flutter/material.dart';
import 'board.dart';

class GameBody extends StatelessWidget {
  const GameBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Board();
  }
}
