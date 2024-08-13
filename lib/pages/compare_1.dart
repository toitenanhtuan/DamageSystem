import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Compare1 extends StatelessWidget {
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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              width: double.infinity,
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
                              'assets/vectors/image_x2.svg',
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
                                    'assets/vectors/vector_11_x2.svg',
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
                                            'assets/vectors/rectangle_5804_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 6, 1, 0),
                                        child: SizedBox(
                                          width: 2,
                                          height: 6,
                                          child: SvgPicture.asset(
                                            'assets/vectors/rectangle_5816_x2.svg',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 3, 1, 0),
                                        child: SizedBox(
                                          width: 2,
                                          height: 9,
                                          child: SvgPicture.asset(
                                            'assets/vectors/rectangle_5823_x2.svg',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 2,
                                        height: 12,
                                        child: SvgPicture.asset(
                                          'assets/vectors/rectangle_5831_x2.svg',
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
                                  'assets/vectors/battery_10_x2.svg',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.9, 0, 24, 548),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 6.3, 0, 11.3),
                          width: 29,
                          height: 29,
                          child: SizedBox(
                            width: 7.3,
                            height: 14.5,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_2_x2.svg',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 7, 0, 7),
                          child: Text(
                            'Compare',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                        Container(
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
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(1, 0, 0, 11),
                    child: Text(
                      'Pixels: ............. pixel (s)',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.3,
                        letterSpacing: 0.4,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 31, 84),
                    child: Text(
                      'Metters: ............. m',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.3,
                        letterSpacing: 0.4,
                        color: Color(0xFF000000),
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
            Positioned(
              left: -7.6,
              right: -6.6,
              top: 114.7,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                ),
                child: Container(
                  width: 362,
                  height: 493,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}