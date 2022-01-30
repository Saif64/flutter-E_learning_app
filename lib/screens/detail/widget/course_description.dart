import 'package:e_learning/constants/colors.dart';
import 'package:e_learning/models/course.dart';
import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  final Course course;

  CourseDescription(this.course);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                course.authorImg,
                width: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                course.author,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                height: 5,
                width: 5,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kFontLight),
              ),
              Icon(
                Icons.access_time_filled,
                size: 20,
                color: kAccent,
              ),
              SizedBox(
                width: 5,
              ),
              Text('12h 30 min',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kFont.withOpacity(0.6)))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            course.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: kFont),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Learn and master the art of Development\nLeanrn and enjoy the course',
            style: TextStyle(
              color: kFont.withOpacity(0.75),
              wordSpacing: 2,
            ),
          )
        ],
      ),
    );
  }
}
