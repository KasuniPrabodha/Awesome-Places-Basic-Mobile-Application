import 'package:app04/pages/bookings.dart';
import 'package:app04/pages/cultural.dart';
import 'package:app04/pages/land_mark.dart';
import 'package:app04/pages/natural_wonders.dart';
import 'package:app04/pages/night_life.dart';
import 'package:app04/utils/colors.dart';
import 'package:app04/widgets/home/category_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(color: mainTextColor, fontSize: 20),
                        ),
                        Text(
                          "Places",
                          style: TextStyle(
                            color: mainColor,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(400),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley, the librarian at St Bride Printing Library in London, took a 1914 Cicero translation and scrambled it to make dummy text for Letraset's Body Type sheets.",
                  style: TextStyle(color: mainTextColor, fontSize: 15),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/sigiriya.jpg",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Text(
                  "Select A Place From The Categories",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: mainColor,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NaturalWonders(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        backgroundColor: Colors.blue,
                        title: "Natural Wonders",
                        cardWidth: 180,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NightLife()),
                        );
                      },
                      child: CategoryCard(
                        backgroundColor: Colors.blue,
                        title: "NightLife",
                        cardWidth: 180,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LandMark()),
                        );
                      },
                      child: CategoryCard(
                        backgroundColor: const Color.fromARGB(
                          255,
                          162,
                          190,
                          214,
                        ),
                        title: "LandMarks",
                        cardWidth: 180,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cultural()),
                        );
                      },
                      child: CategoryCard(
                        backgroundColor: const Color.fromARGB(
                          255,
                          162,
                          190,
                          214,
                        ),
                        title: "Cultural",
                        cardWidth: 180,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bookings()),
                    );
                  },
                  child: CategoryCard(
                    backgroundColor: Colors.yellow,
                    title: "Book for a ride today!",
                    cardWidth: double.infinity,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
