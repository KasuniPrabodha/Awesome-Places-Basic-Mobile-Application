import 'package:app04/utils/colors.dart';
import 'package:flutter/material.dart';

class VehicalCard extends StatelessWidget {
  final String imageURL;
  final String description;
  const VehicalCard({super.key, required this.imageURL, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.asset(imageURL, width: 115, height: 115, fit: BoxFit.cover,)
          ),
          Text(
            description,
            style: TextStyle(
              color: mainColor,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]
      ),
    );
  }
}
