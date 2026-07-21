import 'package:app04/utils/colors.dart';
import 'package:flutter/material.dart';

class LandmarkCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;
  const LandmarkCard({super.key, required this.title, required this.description, required this.imageURL,});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: subLandmark,
              ),
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.network(
                imageURL,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: mainTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
