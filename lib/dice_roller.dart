import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRole = 2;

  void rolldice() {
    setState(() {
      currentDiceRole = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('Assets/images/dice-$currentDiceRole.PNG', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
            // padding: EdgeInsets.only(top: 20),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
