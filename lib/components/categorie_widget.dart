import 'package:flutter/material.dart';
import 'package:toku_app/models/categorie_model.dart';

class CategorieItem extends StatelessWidget {
  const CategorieItem({super.key, required this.categorie});
  final CategorieModel categorie;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        categorie.navigationToNextPage(context);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 70,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        color: categorie.color,
        child: Text(
          categorie.name,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
