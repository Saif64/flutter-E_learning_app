import 'package:e_learning/constants/colors.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/screens/detail/detail.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  CourseItem(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: kPrimaryLight, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    child: Image.asset(
                      course.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
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
                              width: 8,
                            ),
                            Text(
                              course.author,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            Text(
                              course.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: kFont),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: kFontLight, shape: BoxShape.circle),
                            ),
                            Text(
                              '12h 29min',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: kFont.withOpacity(0.5)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(course)));
              },
              child: Text(
                'Enroll',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.6)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
