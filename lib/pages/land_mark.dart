import 'package:app04/utils/colors.dart';
import 'package:app04/widgets/reusable/landmark_card.dart';
import 'package:flutter/material.dart';

class LandMark extends StatelessWidget {
  const LandMark({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "LandMarks",
              style: TextStyle(
                  fontSize: 20,
                  color: mainLandmark,
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

                LandmarkCard(title: "LandMark Place 1", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", imageURL: "https://dotonmap.com/wp-content/uploads/2026/05/piza-10-1024x691.jpg"),

                SizedBox(height: 20,),

                LandmarkCard(title: "LandMark Place 2", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley", imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7FEgcfZ-YLWcHhxGaHkB3i3ImGoi0w7xoieKb0JyuLQ&s=10"),

              ],
            ),
          ),
        ),
      ),
    );
  }
}