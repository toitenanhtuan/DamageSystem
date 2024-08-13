import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Nha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 2, 0, 1.7),
          child: SizedBox(
            width: 20,
            height: 18,
            child: SvgPicture.asset(
              'assets/vectors/home_x2.svg',
            ),
          ),
        ),
        Container(
          width: 24,
          height: 24,
          child: SizedBox(
            width: 19,
            height: 21.8,
            child: SvgPicture.asset(
              'assets/vectors/subtract_3_x2.svg',
            ),
          ),
        ),
      ],
    );
  }
}