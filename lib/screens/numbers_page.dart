import 'package:flutter/material.dart';
import 'package:toku_app/components/container_item.dart';
import 'package:toku_app/models/item_info.dart';
import 'package:toku_app/screens/home_page.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categories[0].name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbersItemInfo.length,
        itemBuilder: (context, index) => ContainerNamber(
          color: categories[0].color,
          item: numbersItemInfo[index],
        ),
      ),
    );
  }
}

List<ItemInfoModel> numbersItemInfo = const [
  ItemInfoModel(
    image: 'assets/images/numbers/number_one.png',
    enText: 'One',
    jaText: 'Ichi',
    sound: 'sounds/numbers/number_one_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_two.png',
    enText: 'Two',
    jaText: 'Ni',
    sound: 'sounds/numbers/number_two_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_three.png',
    enText: 'Three',
    jaText: 'San',
    sound: 'sounds/numbers/number_three_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_four.png',
    enText: 'Four',
    jaText: 'Yon',
    sound: 'sounds/numbers/number_four_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_five.png',
    enText: 'Five',
    jaText: 'Go',
    sound: 'sounds/numbers/number_five_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_six.png',
    enText: 'Six',
    jaText: 'Roku',
    sound: 'sounds/numbers/number_six_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_seven.png',
    enText: 'Seven',
    jaText: 'Nana',
    sound: 'sounds/numbers/number_seven_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_eight.png',
    enText: 'Eight',
    jaText: 'Hachi',
    sound: 'sounds/numbers/number_eight_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_nine.png',
    enText: 'Nine',
    jaText: 'Kyū',
    sound: 'sounds/numbers/number_nine_sound.mp3',
  ),
  ItemInfoModel(
    image: 'assets/images/numbers/number_ten.png',
    enText: 'Ten',
    jaText: 'Jū',
    sound: 'sounds/numbers/number_ten_sound.mp3',
  )
];

// List<ContainerNamber> categoriesWidget() {
//   List<ContainerNamber> listWidgets = [];
//   for (int i = 0; i < numbersInfo.length; i++) {
//     listWidgets.add(
//       ContainerNamber(
//         number: numbersInfo[i],
//       ),
//     );
//   }
//   return listWidgets;
// }
