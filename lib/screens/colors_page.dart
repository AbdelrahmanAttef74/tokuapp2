import 'package:flutter/material.dart';
import 'package:tuku_app/components/number_item.dart';
import 'package:tuku_app/models/number_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key, required this.color});
  final Color color;
  final List<ItemModel> numbersList = const [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        enName: 'black',
        jpName: 'Kuro'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo'),
    ItemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        enName: 'dusty yellow',
        jpName: 'Dasutiierō'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        enName: 'gray',
        jpName: 'Gurē'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        enName: 'green',
        jpName: 'Midori'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        enName: 'red',
        jpName: 'Aka'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        enName: 'white',
        jpName: 'Shiro'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        enName: 'yellow',
        jpName: 'Kiiro'),
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        enName: 'black',
        jpName: 'Kuro'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        enName: 'brown',
        jpName: 'Chairo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Colors',
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
              color: color,
            );
          },
        ));
  }
}
