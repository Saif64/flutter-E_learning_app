import 'package:e_learning/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(25),
            decoration: BoxDecoration(
                border:
                    Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                borderRadius: BorderRadius.circular(20)),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                  fillColor: kFontLight.withOpacity(0.1),
                  filled: true,
                  contentPadding: EdgeInsets.all(18),
                  border: InputBorder.none,
                  hintText: 'Search for history, classes...',
                  hintStyle: TextStyle(color: kFontLight)),
            ),
          ),
          // Positioned(
          //     right: 45,
          //     top: 35,
          //     child: Container(
          //       padding: EdgeInsets.all(8),
          //       decoration: BoxDecoration(
          //           color: kAccent, borderRadius: BorderRadius.circular(8)),
          //       child: Image.asset(
          //         'assets/icons/search.png',
          //         width: 20,
          //       ),
          //     )
          // )
          Positioned(
            bottom: 32,
            right: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kAccent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: kAccent, borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  'assets/icons/search.png',
                  width: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
