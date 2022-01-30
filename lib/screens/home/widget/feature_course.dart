import 'package:e_learning/models/course.dart';
import 'package:e_learning/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

import 'Category_title.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of Week', 'View All'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(28),
              itemCount: coursesList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CourseItem(coursesList[index]),
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
