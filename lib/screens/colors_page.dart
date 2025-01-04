import 'package:flutter/material.dart';
import 'package:toku_app/components/container_item.dart';
import 'package:toku_app/models/item_info.dart';
import 'package:toku_app/screens/home_page.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categories[2].name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: colorsItemInfo.length,
        itemBuilder: (context, index) => ContainerNamber(
          color: categories[2].color,
          item: colorsItemInfo[index],
        ),
      ),
    );
  }
}

List<ItemInfoModel> colorsItemInfo = const [
  ItemInfoModel(
    image: 'assets/images/colors/color_black.png',
    enText: 'Black',
    jaText: 'Kuro',
    sound: 'sounds/colors/black.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/color_brown.png',
    enText: 'Brown',
    jaText: 'Chairo',
    sound: 'sounds/colors/brown.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/color_dusty_yellow.png',
    enText: 'Dusty Yellow',
    jaText: 'Hokori ppoi kiiro',
    sound: 'sounds/colors/dusty yellow.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/color_gray.png',
    enText: 'Gray',
    jaText: 'Gure',
    sound: 'sounds/colors/gray.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/color_green.png',
    enText: 'Green',
    jaText: 'Midori',
    sound: 'sounds/colors/green.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/color_red.png',
    enText: 'Red',
    jaText: 'Aka',
    sound: 'sounds/colors/red.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/color_white.png',
    enText: 'White',
    jaText: 'Shiro ',
    sound: 'sounds/colors/white.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/colors/yellow.png',
    enText: 'Yellow',
    jaText: 'Ki iro ',
    sound: 'sounds/colors/yellow.wav',
  )
];
