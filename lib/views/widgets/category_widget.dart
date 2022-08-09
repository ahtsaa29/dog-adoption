import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final IconData categoryIcon;
  final String categoryName;
  const CategoryWidget({
    required this.categoryIcon,
    required this.categoryName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      padding: const EdgeInsets.all(12.0),
      label: Column(
        children: [
          Icon(
            categoryIcon,
            size: 50,
          ),
          Text(categoryName),
        ],
      ),
    );
  }
}
