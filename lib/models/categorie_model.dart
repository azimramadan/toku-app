import 'package:flutter/material.dart';

class CategorieModel {
  final String name;
  final Color color;
  final Widget nextPage;
  const CategorieModel(
      {required this.color, required this.name, required this.nextPage});
  navigationToNextPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return nextPage;
        },
      ),
    );
  }
}
