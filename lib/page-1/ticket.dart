import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class ticket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.8;
    return Container(
      width: double.infinity,
      child: Container(
        // ticketnTQ (2:110)
        width: double.infinity,
        height: 812 * fem,
        decoration: BoxDecoration(
          color: Color(0xfffbfbfb),
          borderRadius: BorderRadius.circular(38 * fem),
        ),
        child: Stack(
          children: [
            Positioned(
              // autogrouplaequH8 (K9Eoq2EfnG1BzaP2hfLAEq)
              left: 20 * fem,
              top: 275 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(12 * fem, 24 * fem, 13 * fem, 15 * fem),
                width: 336 * fem,
                height: 358 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/page-1/images/rectangle-14.png',
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupznluNAi (K9Ep91ih5Nte9kZW7BzNLu)
                      margin: EdgeInsets.fromLTRB(
                          12 * fem, 0 * fem, 12 * fem, 5 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // fullnametPx (2:138)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 142 * fem, 0 * fem),
                            child: Text(
                              'Full Name',
                              style: SafeGoogleFont(
                                'Prompt',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // abhirajsolankio18 (2:139)
                            'Abhiraj Solanki',
                            style: SafeGoogleFont(
                              'Prompt',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupehpbXSv (K9EpFm2T4YiwDC8RtGEhPB)
                      margin: EdgeInsets.fromLTRB(
                          12 * fem, 0 * fem, 10 * fem, 26 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // vehiclenumberrVC (2:141)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 130 * fem, 0 * fem),
                            child: Text(
                              'Vehicle Number',
                              style: SafeGoogleFont(
                                'Prompt',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5125 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // kl32c03mMG (2:140)
                            'KL 32 C 03',
                            style: SafeGoogleFont(
                              'Prompt',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // line76PY (2:123)
                      margin: EdgeInsets.fromLTRB(
                          13 * fem, 0 * fem, 13 * fem, 27.7 * fem),
                      width: double.infinity,
                      height: 0.3 * fem,
                      decoration: BoxDecoration(
                        color: Color(0x7f000000),
                      ),
                    ),
                    Container(
                      // autogroup51ufpKY (K9EpPLe9tJi4Cm9ctn51uf)
                      margin: EdgeInsets.fromLTRB(
                          16 * fem, 0 * fem, 24 * fem, 22 * fem),
                      width: double.infinity,
                      height: 58 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group58b8 (2:126)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 8 * fem, 8 * fem, 8 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // price4Dt (2:127)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  child: Text(
                                    'Price',
                                    style: SafeGoogleFont(
                                      'Prompt',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5125 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  // rs1200ZwL (2:128)
                                  'Rs.1200',
                                  style: SafeGoogleFont(
                                    'Prompt',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line2hne (2:135)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 27 * fem, 0 * fem),
                            width: 1 * fem,
                            height: 58 * fem,
                          ),
                          Container(
                            // group6qtr (2:129)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 8 * fem, 28 * fem, 8 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // dateBSv (2:130)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 11 * fem, 1 * fem),
                                  child: Text(
                                    ' Date',
                                    style: SafeGoogleFont(
                                      'Prompt',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5125 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  // jan2052J1k (2:131)
                                  '20 Jan 2052',
                                  style: SafeGoogleFont(
                                    'Prompt',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // line3qXU (2:136)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 30 * fem, 0 * fem),
                            width: 1 * fem,
                            height: 58 * fem,
                          ),
                          Container(
                            // group7BLS (2:132)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 8 * fem, 0 * fem, 10 * fem),
                            width: 42 * fem,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                Positioned(
                                  // vehicleu1Y (2:133)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 42 * fem,
                                      height: 19 * fem,
                                      child: Text(
                                        'Vehicle',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // bikePxJ (2:134)
                                  left: 6 * fem,
                                  top: 18 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 30 * fem,
                                      height: 22 * fem,
                                      child: Text(
                                        'Bike',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
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
                    ),
                    Container(
                      // autogroupkpmk6bp (K9Epi5bvjZ8eheqXcCkpMK)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 31 * fem),
                      padding: EdgeInsets.fromLTRB(
                          22 * fem, 19 * fem, 24 * fem, 11 * fem),
                      width: double.infinity,
                      height: 95 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(19 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupyz41PL2 (K9Epp5RwAbRoRNu25NyZ41)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 19 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // image68Hc (2:125)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                  width: 177 * fem,
                                  height: 39 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/image-6.png',
                                  ),
                                ),
                                Container(
                                  // ticketnogh735f82gFNE (2:124)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 6 * fem, 0 * fem),
                                  child: Text(
                                    'Ticket no. GH735F82G',
                                    style: SafeGoogleFont(
                                      'Prompt',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5125 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // mvdss1Z82 (4:194)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 8 * fem),
                            width: 69 * fem,
                            height: 57 * fem,
                            child: Image.asset(
                              'assets/page-1/images/mvdss-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // downloadeticket4qU (2:137)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        'Download E-ticket',
                        style: SafeGoogleFont(
                          'Prompt',
                          fontSize: 10 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.5125 * ffem / fem,
                          decoration: TextDecoration.underline,
                          color: Color(0xff000000),
                          decorationColor: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // yourreportconfirmedxvr (2:114)
              left: 116 * fem,
              top: 97 * fem,
              child: Align(
                child: SizedBox(
                  width: 135 * fem,
                  height: 19 * fem,
                  child: Text(
                    'Your Report Confirmed',
                    style: SafeGoogleFont(
                      'Prompt',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5125 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupvc7fFQA (K9EnoYwmAcjnMoT5ZAVC7f)
              left: 20 * fem,
              top: 151 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(18 * fem, 13 * fem, 28 * fem, 17 * fem),
                width: 336 * fem,
                height: 93 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x23ffffff)),
                  color: Color(0x140082b4),
                  borderRadius: BorderRadius.circular(11 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupzqgrvFQ (K9Eo3ssDyYZCQp3CLkZqgR)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 28 * fem, 0 * fem),
                      width: 60 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupqacu358 (K9EoBTUvoJYKQP4PMGQACu)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 13 * fem),
                            width: 46 * fem,
                            height: 19 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // confrimMbc (2:116)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 46 * fem,
                                      height: 19 * fem,
                                      child: Text(
                                        'Confrim',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // confrimrYN (3:176)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 46 * fem,
                                      height: 19 * fem,
                                      child: Text(
                                        'Confrim',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupsuwbAox (K9EoFnh3ZAXpFrDMMZSuwB)
                            width: double.infinity,
                            height: 31 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // jan2022vHL (2:117)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 60 * fem,
                                      height: 16 * fem,
                                      child: Text(
                                        '20 Jan 2022',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // cherthalaEJ2 (2:119)
                                  left: 0 * fem,
                                  top: 15 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 47 * fem,
                                      height: 16 * fem,
                                      child: Text(
                                        'Cherthala',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // jan2022vge (3:177)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 60 * fem,
                                      height: 16 * fem,
                                      child: Text(
                                        '20 Jan 2022',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.5125 * ffem / fem,
                                          color: Color(0xff000000),
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
                    ),
                    Container(
                      // autogroup4ofsEBY (K9EoSciLSpWZPX6mNJ4oFs)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 40 * fem, 24 * fem, 22.7 * fem),
                      width: 123 * fem,
                      height: double.infinity,
                    ),
                    Container(
                      // autogroupnks1mBU (K9EoXCR344M72E6D9DnkS1)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 32 * fem, 0 * fem, 0 * fem),
                      width: 55 * fem,
                      height: 31 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // kl32c03HQi (2:118)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 55 * fem,
                                height: 16 * fem,
                                child: Text(
                                  'KL 32 C 03',
                                  style: SafeGoogleFont(
                                    'Prompt',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5125 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // bikePTk (2:120)
                            left: 34 * fem,
                            top: 15 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 21 * fem,
                                height: 16 * fem,
                                child: Text(
                                  'Bike',
                                  style: SafeGoogleFont(
                                    'Prompt',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5125 * ffem / fem,
                                    color: Color(0xff000000),
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
              ),
            ),
            Positioned(
              // evaarrowiosbackfill67G (2:142)
              left: 15 * fem,
              top: 61 * fem,
              child: Align(
                child: SizedBox(
                  width: 35 * fem,
                  height: 35 * fem,
                  child: Opacity(
                    opacity: 0.6,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Image.asset(
                        'assets/page-1/images/eva-arrow-ios-back-fill.png',
                        width: 35 * fem,
                        height: 35 * fem,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
