import 'package:e_learning/constants/colors.dart';
import 'package:e_learning/screens/home/widget/active_course.dart';
import 'package:e_learning/screens/home/widget/emoji_text.dart';
import 'package:e_learning/screens/home/widget/feature_course.dart';
import 'package:e_learning/screens/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackground,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              label: 'home',
              icon: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: kAccent, width: 2))),
                child: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )),
          BottomNavigationBarItem(
              label: 'calendar',
              icon: Image.asset('assets/icons/calendar.png', width: 20)),
          BottomNavigationBarItem(
              label: 'bookmark',
              icon: Image.asset('assets/icons/bookmark.png', width: 20)),
          BottomNavigationBarItem(
              label: 'user',
              icon: Image.asset('assets/icons/user.png', width: 20)),
        ]);
  }

  SingleChildScrollView _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [EmojiText(), SearchInput(), FeatureCourse(), ActiveCourse()],
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          "Hello Saif",
          style: TextStyle(color: kFontLight, fontSize: 16),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
              padding: EdgeInsets.all(8),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 30,
              ),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(15)),
            ),
            Positioned(
                top: 15,
                right: 30,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration:
                      BoxDecoration(color: kAccent, shape: BoxShape.circle),
                ))
          ],
        )
      ],
    );
  }
}
