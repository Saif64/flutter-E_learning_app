import 'package:e_learning/constants/colors.dart';
import 'package:e_learning/screens/home/widget/Category_title.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Currently Active', 'View All'),
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.2),
              border: Border.all(color: kFontLight.withOpacity(0.5), width: 1),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/flutter.jpg',
                        width: 60,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Flutter',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kFont.withOpacity(0.9)),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '2h left',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.55)),
                        )
                      ],
                    ),
                  ],
                ),
                CircularPercentIndicator(
                  progressColor: Colors.green,
                  animation: true,
                  animateFromLastPercent: true,
                  radius: 40,
                  lineWidth: 10.0,
                  percent: 0.70,
                  center: Text(
                    '70%',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
