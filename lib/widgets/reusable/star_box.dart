import 'package:app04/utils/colors.dart';
import 'package:flutter/material.dart';

class StarBox extends StatelessWidget {
  const StarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, color: starsColor, size: 35),
            Icon(Icons.star, color: starsColor, size: 35),
            Icon(Icons.star, color: starsColor, size: 35),
            Icon(Icons.star, color: starsColor, size: 35),
            Icon(Icons.star, color: starsColor, size: 35),
            Icon(Icons.star,color: const Color.fromARGB(255, 108, 108, 107),size: 35,),
          ],
        ),
      ),
    );
  }
}
