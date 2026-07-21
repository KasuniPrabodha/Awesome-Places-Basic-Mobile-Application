import 'package:app04/utils/colors.dart';
import 'package:app04/widgets/reusable/image_card.dart';
import 'package:flutter/material.dart';

class NightLife extends StatelessWidget {
  const NightLife({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "NightLife",
              style: TextStyle(
                  fontSize: 20,
                  color: mainNightLife,
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

                ImageCard(title: "NightLife Place 1", titleColor: subNightLife, image: "assets/night_beach.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", isCornerRounded: true),

                SizedBox(height: 20,),

                ImageCard(title: "NightLife Place 2", titleColor: subNightLife, image: "assets/sunset.jpg", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", isCornerRounded: true),

                SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}