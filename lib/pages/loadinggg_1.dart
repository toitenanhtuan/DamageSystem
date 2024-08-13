import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Loadinggg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFFFFFFF)),
          borderRadius: BorderRadius.circular(27.6),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Color(0x26000000),
              offset: Offset(0, 11.9),
              blurRadius: 7.2982006073,
            ),
          ],
        ),
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(0.1, 307.6, 0, 224.9),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.7, 0, 0, 87),
                      child: Text(
                        'Welcome to Vehicle Damage Assessment System ',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          fontSize: 17.4,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0.3, 5),
                      child: Text(
                        'Loading...',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          fontSize: 17.4,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0.3, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFFFFFFF)),
                        borderRadius: BorderRadius.circular(10.7),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Container(
                        width: 258,
                        height: 58,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: 110.6,
                  bottom: 134.8,
                  child: SizedBox(
                    width: 70.6,
                    height: 54.5,
                    child: SvgPicture.asset(
                      'assets/vectors/subtract_2_x2.svg',
                    ),
                  ),
                ),
                Positioned(
                  left: 109.3,
                  bottom: 131.1,
                  child: Container(
                    width: 83,
                    height: 83,
                    child: SizedBox(
                      width: 61.9,
                      height: 61.9,
                      child: SvgPicture.asset(
                        'assets/vectors/union_1_x2.svg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}