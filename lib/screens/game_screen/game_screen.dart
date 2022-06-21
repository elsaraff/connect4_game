import 'package:connect4_game/controllers/game_controller.dart';
import 'package:connect4_game/screens/game_screen/widgets/coin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/game_body.dart';

class GameScreen extends StatelessWidget {
  final GameController gameController = Get.find<GameController>();

  GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() => Column(
              children: [
                Coin(
                  coinColor:
                      gameController.turnYellow ? Colors.yellow : Colors.red,
                  height: 70,
                  width: 70,
                ),
                const SizedBox(height: 10),
                Text(
                  gameController.turnYellow ? 'Yellow Turn' : 'Red Turn',
                  style: TextStyle(
                    fontSize: 30,
                    color:
                        gameController.turnYellow ? Colors.yellow : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )),
        SizedBox(height: Get.height / 10),
        const GameBody(),
      ],
    ));
  }
}
