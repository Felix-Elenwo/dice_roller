import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dice_roller_app/asset_list.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DiceRoller> {
  var activeDiceImage = Image.asset(imgList.first, height: 200);

  // //*LOGIC 1*
  // var activeDiceImage1 = Image.asset(
  //   'lib/assets/images/dice-1.png',
  //   height: 200,
  // ); //To be used with the randomDice function using the number replacement
  // //method and not working with a list of images

  // randomDice() {
  //   //Usng the math method to roll the dice
  //   var random1 = Random().nextInt(6) + 1;

  //   return Image.asset(
  //     'lib/assets/images/dice-$random1.png',
  //     height: 200,
  //   );
  // }

  randomImage() {
    int randomIndex = random.nextInt(imgList.length);
    final randomImg = imgList[randomIndex];

    return Image.asset(randomImg, height: 200);
  }

  void rollDice() {
    setState(() {
      activeDiceImage = randomImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        activeDiceImage, // or currentDiceImage if randomDice function is to be
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.amber,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text(
            'Roll dice',
          ),
        ),
      ],
    );
  }
}
