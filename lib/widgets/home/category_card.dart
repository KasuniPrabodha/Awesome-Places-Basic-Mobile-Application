import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final double cardWidth;
  const CategoryCard({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.cardWidth,
  });

  final double cardHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
