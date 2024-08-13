import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 15.3, 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(3.7, 0, 3.7, 1),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF222222),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Container(
                      width: 10,
                      height: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 17.4,
                  height: 7,
                  child: SvgPicture.asset(
                    'assets/vectors/ellipse_453_x2.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(4, 0, 4, 4),
                  width: 8,
                  height: 8,
                ),
                SizedBox(
                  width: 16,
                  height: 12,
                  child: SvgPicture.asset(
                    'assets/vectors/ellipse_452_x2.svg',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}