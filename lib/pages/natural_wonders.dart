import 'package:app04/utils/colors.dart';
import 'package:app04/widgets/reusable/image_card.dart';
import 'package:flutter/material.dart';

class NaturalWonders extends StatelessWidget {
  const NaturalWonders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "Natural Wonders",
              style: TextStyle(
                 fontSize: 20,
                 color: mainNatural,
                 fontWeight: FontWeight.w700,
              ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley",
                  style: TextStyle(
                    fontSize: 15,
                    color: mainTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20,),
                
                ImageCard(title: "Natural Wonders Place 1", titleColor: subNatural, image: "assets/medow.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", isCornerRounded: false),

                SizedBox(height: 20,),
                
                ImageCard(title: "Natural Wonders Place 2", titleColor: subNatural, image: "assets/lakeside.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", isCornerRounded: false),

                SizedBox(height: 20,),

                ImageCard(title: "Natural Wonders Place 3", titleColor: subNatural, image: "assets/grasses.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", isCornerRounded: false),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
