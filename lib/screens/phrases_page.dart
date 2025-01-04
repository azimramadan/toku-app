import 'package:flutter/material.dart';
import 'package:toku_app/components/container_item.dart';
import 'package:toku_app/models/item_info.dart';
import 'package:toku_app/screens/home_page.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categories[3].name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrasesItemInfo.length,
        itemBuilder: (context, index) => ContainerNamber(
          color: categories[3].color,
          item: phrasesItemInfo[index],
        ),
      ),
    );
  }
}

List<ItemInfoModel> phrasesItemInfo = const [
  ItemInfoModel(
    enText: 'Are you coming',
    jaText: 'Kimasu ka',
    sound: 'sounds/phrases/are_you_coming.wav',
  ),
  ItemInfoModel(
    enText: 'Yes im coming',
    jaText: 'Kyū',
    sound: 'sounds/phrases/yes_im_coming.wav',
  ),
  ItemInfoModel(
    enText: 'Dont forget to subscribe',
    jaText: 'Kodoku suru koto o \nwasurenaide kudasai',
    sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
  ),
  ItemInfoModel(
    enText: 'How are you feeling',
    jaText: 'Go kibun wa ikagadesu ka',
    sound: 'sounds/phrases/how_are_you_feeling.wav',
  ),
  ItemInfoModel(
    enText: 'I love anime',
    jaText: 'Whatashi wa anime ga daisukidesu',
    sound: 'sounds/phrases/i_love_anime.wav',
  ),
  ItemInfoModel(
    enText: 'I love programming',
    jaText: 'Puroguramingu ga daisuki',
    sound: 'sounds/phrases/i_love_programming.wav',
  ),
  ItemInfoModel(
    enText: 'Programming is easy',
    jaText: 'Puroguramimgu wa kantan',
    sound: 'sounds/phrases/programming_is_easy.wav',
  ),
  ItemInfoModel(
    enText: 'What is your name',
    jaText: 'Anata no o namae wa',
    sound: 'sounds/phrases/what_is_your_name.wav',
  ),
  ItemInfoModel(
    enText: 'Where are you going',
    jaText: 'Doko e iku no',
    sound: 'sounds/phrases/where_are_you_going.wav',
  ),
];
