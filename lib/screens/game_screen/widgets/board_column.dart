import 'package:connect4_game/controllers/game_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cell.dart';

class BoardColumn extends StatelessWidget {
  final GameController gameController = Get.find<GameController>();
  final List<int> columnOfPlayerChips;
  final int columnNumber;

  BoardColumn({
    Key? key,
    required this.columnOfPlayerChips,
    required this.columnNumber,
  }) : super(key: key);

  List<Cell> _buildBoardColumn() {
    return columnOfPlayerChips.reversed
        .map((number) => number == 1
            ? const Cell(
                currentCellMode: CellMode.yellow,
              )
            : number == 2
                ? const Cell(
                    currentCellMode: CellMode.red,
                  )
                : const Cell(
                    currentCellMode: CellMode.empty,
                  ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        gameController.playColumn(columnNumber);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: _buildBoardColumn(),
      ),
    );
  }
}
