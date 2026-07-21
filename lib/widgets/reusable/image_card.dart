import 'package:app04/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String image;
  final String description;
  final bool isCornerRounded;
  const ImageCard({
    super.key,
    required this.title,
    required this.titleColor,
    required this.image,
    required this.description,
    required this.isCornerRounded,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: titleColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 10),

        isCornerRounded
            ? ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(
            fontSize: 15,
            color: mainTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
