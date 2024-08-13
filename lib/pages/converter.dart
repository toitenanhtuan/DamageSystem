import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Converter extends StatelessWidget {
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
      child: Stack(
        children: [
          Positioned(
            right: -28.8,
            top: -11.3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 1),
                  colors: <Color>[Color(0xFFFFFFFF), Color(0xFFE6EAF2)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Container(
                width: 391,
                height: 828,
              ),
            ),
          ),
          Positioned(
            right: -62.8,
            top: -33.3,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF000000)),
                borderRadius: BorderRadius.circular(26),
                color: Color(0xFFD9D9D9),
              ),
              child: Container(
                width: 471,
                height: 850,
              ),
            ),
          ),
    Container(
            padding: EdgeInsets.fromLTRB(8.6, 11.3, 0, 0.9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 5.8, 22.6),
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
                            'assets/vectors/image_8_x2.svg',
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
                                  'assets/vectors/vector_12_x2.svg',
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
                                          'assets/vectors/rectangle_5803_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 6, 1, 0),
                                      child: SizedBox(
                                        width: 2,
                                        height: 6,
                                        child: SvgPicture.asset(
                                          'assets/vectors/rectangle_58110_x2.svg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 3, 1, 0),
                                      child: SizedBox(
                                        width: 2,
                                        height: 9,
                                        child: SvgPicture.asset(
                                          'assets/vectors/rectangle_5827_x2.svg',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 2,
                                      height: 12,
                                      child: SvgPicture.asset(
                                        'assets/vectors/rectangle_58310_x2.svg',
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
                                'assets/vectors/battery_6_x2.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 33),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF2D3440),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                      ),
                      child: Container(
                        width: 172,
                        padding: EdgeInsets.fromLTRB(0, 13, 2, 13),
                        child: Text(
                          'Calculator',
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(12, 0, 11.8, 44),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(9.8, 0, 0, 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: Text(
                                'Length',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  height: 1,
                                  color: Color(0xFF000000),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 6, 0, 6),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.5),
                                child: SizedBox(
                                  width: 12,
                                  height: 8,
                                  child: SvgPicture.asset(
                                    'assets/vectors/polygon_12_x2.svg',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(4, 0, 0, 23),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: SizedBox(
                                      width: 45,
                                      child: Text(
                                        '10',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 40,
                                          height: 1,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                          child: Text(
                                            'ft',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              height: 1,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(0.5),
                                            child: SizedBox(
                                              width: 12,
                                              height: 8,
                                              child: SvgPicture.asset(
                                                'assets/vectors/polygon_1_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF596780),
                                ),
                                child: Container(
                                  width: 249,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: SizedBox(
                                      width: 101,
                                      child: Text(
                                        '3.048',
                                        style: GoogleFonts.getFont(
                                          'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 40,
                                          height: 1,
                                          color: Color(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 12, 0, 12),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                          child: Text(
                                            'm',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              height: 1,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(0.5),
                                            child: SizedBox(
                                              width: 12,
                                              height: 8,
                                              child: SvgPicture.asset(
                                                'assets/vectors/polygon_11_x2.svg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF596780),
                                ),
                                child: Container(
                                  width: 250,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF363E4C),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 18, 0, 18),
                              child: Text(
                                'AC',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF363E4C),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(2),
                              bottomLeft: Radius.circular(2),
                            ),
                          ),
                          child: Container(
                            height: 64,
                            padding: EdgeInsets.fromLTRB(0, 21, 1, 21),
                            child: SizedBox(
                              width: 22,
                              height: 22,
                              child: SvgPicture.asset(
                                'assets/vectors/group_78_x2.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '7',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '8',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF242933),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                            child: Text(
                              '9',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                                height: 1,
                                color: Color(0xFFCBE1FF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '4',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '5',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF242933),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                            child: Text(
                              '6',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                                height: 1,
                                color: Color(0xFFCBE1FF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '1',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '2',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF242933),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                            child: Text(
                              '3',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 28,
                                height: 1,
                                color: Color(0xFFCBE1FF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                topRight: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                                bottomLeft: Radius.circular(8),
                              ),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 25.5, 0, 25.5),
                              child: Text(
                                '.',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 32,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF242933),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 27.5, 0, 27.5),
                              child: Text(
                                '0',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 28,
                                  height: 1,
                                  color: Color(0xFFCBE1FF),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF242933),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(2),
                              topRight: Radius.circular(2),
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(2),
                            ),
                          ),
                          child: Container(
                            height: 83,
                            padding: EdgeInsets.fromLTRB(0, 30, 2, 29),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2),
                              child: SizedBox(
                                width: 24,
                                height: 35,
                                child: SvgPicture.asset(
                                  'assets/vectors/polygon_2_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}