import 'package:app04/utils/colors.dart';
import 'package:app04/widgets/reusable/custom_button.dart';
import 'package:app04/widgets/reusable/star_box.dart';
import 'package:flutter/material.dart';

class Cultural extends StatelessWidget {
  const Cultural({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "Cultural",
              style: TextStyle(
                  fontSize: 20,
                  color: mainCultural,
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

                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(5),
                  child: Image.asset("assets/watadageya.jpg", width: double.infinity, fit: BoxFit.cover,)),

                SizedBox(height: 10,),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley",
                    style: TextStyle(
                      fontSize: 15,
                      color: mainTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                SizedBox(height: 20,),
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Text(
                      "Rate This Place",
                      style: TextStyle(
                        fontSize: 18,
                        color: mainCultural,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                ),
                SizedBox(height: 20,),
                
                StarBox(),

                SizedBox(height: 10,),
                Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since 1966, when designers at Letraset and James Mosley",
                    style: TextStyle(
                      fontSize: 15,
                      color: mainTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                SizedBox(height: 20,),
                Align(
                  alignment: AlignmentGeometry.center,
                  child: Text(
                    "Send Feedback",
                    style: TextStyle(
                      fontSize: 18,
                      color: mainCultural,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter a text...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                    ),
                    contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 15),
                  ),
                ),

                SizedBox(height: 20,),
                Align(
                  alignment: AlignmentGeometry.bottomRight,
                  child: CustomButton(backgroundColor: submitButton, title: "Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}