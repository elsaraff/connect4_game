import 'package:flutter/material.dart';

import 'coin.dart';

enum CellMode {
  empty,
  yellow,
  red,
}

class Cell extends StatelessWidget {
  final dynamic currentCellMode;

  const Cell({
    Key? key,
    required this.currentCellMode,
  }) : super(key: key);

  Coin _buildCoin() {
    switch (currentCellMode) {
      case CellMode.yellow:
        return const Coin(
          coinColor: Colors.yellow,
        );
      case CellMode.red:
        return const Coin(
          coinColor: Colors.red,
        );
      default:
        return const Coin(
          coinColor: Colors.white,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          color: Colors.blue,
        ),
        Positioned.fill(
            child: Align(
          alignment: Alignment.center,
          child: _buildCoin(),
        ))
      ],
    );
  }
}
