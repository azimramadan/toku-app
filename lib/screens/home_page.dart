import 'package:flutter/material.dart';
import 'package:toku_app/models/categorie_model.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';
import '../components/categorie_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF6DC),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(children: listCategories()),
    );
  }
}

List<CategorieModel> categories = const [
  CategorieModel(
    color: Color(0xffFF9800),
    name: 'Numbers',
    nextPage: NumbersPage(),
  ),
  CategorieModel(
    color: Color(0xff4CAF50),
    name: 'Family Members',
    nextPage: FamilyMembersPage(),
  ),
  CategorieModel(
    color: Color(0xff79359F),
    name: 'Colors',
    nextPage: ColorsPage(),
  ),
  CategorieModel(
    color: Color(0xff19A8BE),
    name: 'Phrases',
    nextPage: Phrases(),
  )
];

List<CategorieItem> listCategories() {
  List<CategorieItem> listWidgets = [];
  for (int i = 0; i < categories.length; i++) {
    listWidgets.add(CategorieItem(
      categorie: categories[i],
    ));
  }
  return listWidgets;
}
