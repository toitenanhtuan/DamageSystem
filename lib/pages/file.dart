import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class File extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset(
            'assets/vectors/folder_fill_x2.svg',
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 2),
          width: 24,
          height: 24,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: SizedBox(
              width: 19,
              height: 17,
              child: SvgPicture.asset(
                'assets/vectors/rectangle_40171_x2.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}