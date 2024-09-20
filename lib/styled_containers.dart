import 'package:flutter/material.dart';
import 'package:dice_roller_app/dice_roll.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientStyleContainer extends StatelessWidget {
  // const GradientStyleContainer(this.color1, this.color2, {super.key});

  // adding a constructor function for background color
  const GradientStyleContainer.orangeBackground({super.key})
      : color1 = Colors.deepOrange,
        color2 = Colors.orange;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color1, color2],
                begin: startAlignment,
                end: endAlignment)),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}
