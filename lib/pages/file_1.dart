import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class File1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFFFFFFF)),
        borderRadius: BorderRadius.circular(27.6),
        color: Color(0xFFF2F2F2),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 11.9),
            blurRadius: 7.2982006073,
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(7.6, 11.3, 6.8, 0.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 26.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 4.9, 0, 4.9),
                    child: SizedBox(
                      width: 30.5,
                      height: 9,
                      child: SvgPicture.asset(
                        'assets/vectors/image_4_x2.svg',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 4.5, 7.3, 3.3),
                          width: 18,
                          height: 18,
                          child: SizedBox(
                            width: 15.3,
                            height: 10.9,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_6_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 3.4, 7.3, 3.4),
                          child: SizedBox(
                            width: 18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 8, 1, 0),
                                  child: SizedBox(
                                    width: 2,
                                    height: 4,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_58011_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 6, 1, 0),
                                  child: SizedBox(
                                    width: 2,
                                    height: 6,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_5813_x2.svg',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 1, 0),
                                  child: SizedBox(
                                    width: 2,
                                    height: 9,
                                    child: SvgPicture.asset(
                                      'assets/vectors/rectangle_5821_x2.svg',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                  height: 12,
                                  child: SvgPicture.asset(
                                    'assets/vectors/rectangle_5836_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18.7,
                          height: 18.7,
                          child: SvgPicture.asset(
                            'assets/vectors/battery_9_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20.3, 0, 24, 77),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10.3, 0, 16.3),
                    width: 24,
                    height: 24,
                    child: SizedBox(
                      width: 19.5,
                      height: 5.5,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_21_x2.svg',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 9),
                    child: Text(
                      'File',
                      style: GoogleFonts.getFont(
                        'Inter',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    width: 52,
                    height: 52,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Container(
                          width: 32,
                          height: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 194),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xFFD9D9D9),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(13, 22, 13, 22),
                      child: Text(
                        'File 1',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xFFD9D9D9),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      width: 317,
                      height: 62,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 34),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xFFD9D9D9),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      width: 317,
                      height: 62,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Color(0xFFD9D9D9),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 2,
                        ),
                      ],
                    ),
                    child: Container(
                      width: 317,
                      height: 62,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(3.1, 0, 3.1, 2.6),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFEEEEEE)),
                borderRadius: BorderRadius.circular(40.5),
                color: Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 5.4),
                    blurRadius: 3.3047616482,
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 14.7, 0, 10.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 3, 0, 7),
                      child: SizedBox(
                        width: 20,
                        height: 18,
                        child: SvgPicture.asset(
                          'assets/vectors/home_1_x2.svg',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset(
                          'assets/vectors/bell_2_x2.svg',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: SvgPicture.asset(
                          'assets/vectors/folder_fill_1_x2.svg',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                      child: SizedBox(
                        width: 24,
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
                                'assets/vectors/ellipse_451_x2.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 2, 0),
              width: 65,
              height: 2,
              child: Container(
                width: 65,
                height: 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF000000)),
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}