import 'package:flutter/material.dart';
import 'package:toku_app/components/container_item.dart';
import 'package:toku_app/models/item_info.dart';
import 'package:toku_app/screens/home_page.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categories[1].name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyItemInfo.length,
        itemBuilder: (context, index) => ContainerNamber(
          color: categories[1].color,
          item: familyItemInfo[index],
        ),
      ),
    );
  }
}

List<ItemInfoModel> familyItemInfo = const [
  ItemInfoModel(
    image: 'assets/images/family_members/family_grandfather.png',
    enText: 'Grand Father',
    jaText: 'Sofu',
    sound: 'sounds/family_members/grand father.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_grandmother.png',
    enText: 'Grand Mother',
    jaText: 'Sobo',
    sound: 'sounds/family_members/grand mother.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_father.png',
    enText: 'Father',
    jaText: 'Chichi',
    sound: 'sounds/family_members/father.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_mother.png',
    enText: 'Mother',
    jaText: 'Haha',
    sound: 'sounds/family_members/mother.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_son.png',
    enText: 'Son',
    jaText: 'Musuko',
    sound: 'sounds/family_members/son.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_daughter.png',
    enText: 'Daughter',
    jaText: 'Musume',
    sound: 'sounds/family_members/daughter.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_younger_brother.png',
    enText: 'Younger Brohter',
    jaText: 'Otooto ',
    sound: 'sounds/family_members/younger brohter.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_younger_sister.png',
    enText: 'Younger Sister',
    jaText: 'Imooto ',
    sound: 'sounds/family_members/younger sister.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_older_brother.png',
    enText: 'Older Brother',
    jaText: 'Ani ',
    sound: 'sounds/family_members/older bother.wav',
  ),
  ItemInfoModel(
    image: 'assets/images/family_members/family_older_sister.png',
    enText: 'Older Sister',
    jaText: 'Ane ',
    sound: 'sounds/family_members/older sister.wav',
  )
];
