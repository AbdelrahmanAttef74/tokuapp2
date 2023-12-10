import 'package:flutter/material.dart';
import 'package:tuku_app/components/number_item.dart';
import 'package:tuku_app/models/number_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        sound: 'sounds/numbers/number_one_sound.mp3',
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'Ichi'),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Ni'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'Mittsu'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go'),
    ItemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku'),
    ItemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebun'),
    ItemModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'Hachi'),
    ItemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyū'),
    ItemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Jū'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xff4a322b),
        ),
        body: ListView.builder(
          //to set the count of item you need to show
          itemCount: numbersList.length,
          itemBuilder: (context, index) {
            return NumberItem(
              item: numbersList[index],
              color: Colors.orange,
            );
          },
        ));
  }
}
