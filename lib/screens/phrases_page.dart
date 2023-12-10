import 'package:flutter/material.dart';
import 'package:tuku_app/components/phrases_item.dart';
import 'package:tuku_app/models/number_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        enName: 'are you coming',
        jpName: 'Kimasu ka'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        enName: 'yes im coming',
        jpName: 'Hai, kimasu'),
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        enName: 'dont forget to subscribe',
        jpName: 'Kōdoku koto wasurenaide kudasai'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        enName: 'how are you feeling',
        jpName: 'Go kibun wa ikagadesu ka.'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        enName: 'i love anime',
        jpName: 'Watashi wa anime ga daisukidesu'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        enName: 'i love programming',
        jpName: 'Watashi puroguramingu daisukidesu'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        enName: 'programming is easy',
        jpName: 'Puroguramingu wa kantandesu'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        enName: 'what is your name',
        jpName: 'Anata no namae wa nandesuka'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        enName: 'where are you going',
        jpName: 'Doko ni iku no'),
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        enName: 'are you coming',
        jpName: 'Kimasu ka'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Phrases',
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
            return PhrasesItem(
              item: numbersList[index],
              color: const Color(0xff48a5cc),
            );
          },
        ));
  }
}
