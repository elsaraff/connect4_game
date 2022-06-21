import 'package:flutter/material.dart';

class Coin extends StatelessWidget {
  final Color coinColor;
  final double height;
  final double width;

  const Coin({
    Key? key,
    required this.coinColor,
    this.height = 35,
    this.width = 35,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: coinColor,
      ),
    );
  }
}
