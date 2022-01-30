import 'package:e_learning/constants/colors.dart';
import 'package:e_learning/models/course.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(40)),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    course.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Start Now',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(
                    primary: kAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16)),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).padding.top,
              right: 25,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16)),
                  child: IconButton(
                    icon: Icon(
                      Icons.bookmark,
                      color: Colors.white,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  )))
        ],
      ),
    );
  }
}
