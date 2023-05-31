import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  double fem = 0; // MediaQuery.of(context).size.width / baseWidth;
  double ffem = 0; //fem * 0.9;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.9;
    return Container(
      width: double.infinity,
      child: Container(
        // iphone11prox14WhC (1:4)
        width: double.infinity,
        height: 812 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x26ffffff)),
          color: Color(0xfffbfbfb),
          borderRadius: BorderRadius.circular(45 * fem),
          boxShadow: [
            BoxShadow(
              color: Color(0x14000000),
              offset: Offset(11 * fem, 15 * fem),
              blurRadius: 22 * fem,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              // group5393E9L (1:5)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 375 * fem,
                height: 835 * fem,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/page-1/images/rectangle-4451.png',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // unsplashqvyauduolmwJ9C (1:8)
              left: 300 * fem,
              top: 77 * fem,
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 7 * fem,
                  sigmaY: 7 * fem,
                ),
                child: Align(
                  child: SizedBox(
                    width: 30 * fem,
                    height: 30 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15 * fem),
                        color: Color(0xffc4c4c4),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/page-1/images/unsplash-qvyauduolmw-bg.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // previousreportsKpz (1:10)
              left: 38 * fem,
              top: 515 * fem,
              child: Align(
                child: SizedBox(
                  width: 117 * fem,
                  height: 17 * fem,
                  child: Text(
                    'Previous Reports',
                    style: SafeGoogleFont(
                      'Prompt',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.158999988 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group5379ZjL (1:11)
              left: 38 * fem,
              top: 64 * fem,
              child: Container(
                width: 62 * fem,
                height: 35 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // hello4g6 (1:12)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 2 * fem),
                      child: Text(
                        'Hello,',
                        style: SafeGoogleFont(
                          'Prompt',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.1590000788 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Text(
                      // ansanawzn (1:13)
                      'Ansana!',
                      style: SafeGoogleFont(
                        'Prompt',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.1590000391 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // unsplashqvyauduolmwtQE (1:14)
              left: 295 * fem,
              top: 64 * fem,
              child: Align(
                child: SizedBox(
                  width: 40 * fem,
                  height: 40 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 * fem),
                      color: Color(0xffc4c4c4),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/page-1/images/unsplash-qvyauduolmw-bg-4TY.png',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group5394KEe (1:53)
              left: 23 * fem,
              top: 743 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    30 * fem, 16 * fem, 32.62 * fem, 17.01 * fem),
                width: 329 * fem,
                height: 53 * fem,
                decoration: BoxDecoration(
                  color: Color(0x0f0082b4),
                  borderRadius: BorderRadius.circular(15 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // homeAm4 (1:55)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 66.5 * fem, 0 * fem),
                      width: 20 * fem,
                      height: 19.99 * fem,
                      child: Image.asset(
                        'assets/page-1/images/home.png',
                        width: 20 * fem,
                        height: 19.99 * fem,
                      ),
                    ),
                    Opacity(
                      // fontistofavoritesfU (1:56)
                      opacity: 0.5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0.01 * fem, 67.88 * fem, 0 * fem),
                        width: 11 * fem,
                        height: 15 * fem,
                        child: Image.asset(
                          'assets/page-1/images/fontisto-favorite.png',
                          width: 11 * fem,
                          height: 15 * fem,
                        ),
                      ),
                    ),
                    Opacity(
                      // carbonticketkUN (1:58)
                      opacity: 0.5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0.01 * fem, 63 * fem, 0 * fem),
                        width: 19.25 * fem,
                        height: 13.75 * fem,
                        child: Image.asset(
                          'assets/page-1/images/carbon-ticket.png',
                          width: 19.25 * fem,
                          height: 13.75 * fem,
                        ),
                      ),
                    ),
                    Opacity(
                      // epsettingdo4 (1:61)
                      opacity: 0.5,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0.01 * fem, 0 * fem, 0 * fem),
                        width: 18.76 * fem,
                        height: 19.25 * fem,
                        child: Image.asset(
                          'assets/page-1/images/ep-setting.png',
                          width: 18.76 * fem,
                          height: 19.25 * fem,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group5395H2N (2:77)
              left: 23 * fem,
              top: 648 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(23 * fem, 19 * fem, 38 * fem, 20 * fem),
                width: 329 * fem,
                height: 83 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x0f0082b4)),
                  color: Color(0x0f0283b5),
                  borderRadius: BorderRadius.circular(21 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        // autogroupfr7bXSW (K9EkVcnvrjU6HwST6EFR7b)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 8 * fem, 152 * fem, 7 * fem),
                        height: double.infinity,
                        child: Container()),
                    Container(
                      // group5385hkJ (2:81)
                      width: 44 * fem,
                      height: 44 * fem,
                      child: Image.asset(
                        'assets/page-1/images/group-5385.png',
                        width: 44 * fem,
                        height: 44 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // riarrowuplineF18 (2:107)
              left: 292.9999694824 * fem,
              top: 505 * fem,
              child: Container(
                width: 30 * fem,
                height: 36 * fem,
              ),
            ),
            Positioned(
              // carda3Q (3:145)
              left: 38 * fem,
              top: 143 * fem,
              child: Container(
                width: 299 * fem,
                height: 158 * fem,
                child: Container(
                  // rectanglei9c (3:146)
                  padding: EdgeInsets.fromLTRB(
                      16.35 * fem, 15.15 * fem, 16.35 * fem, 19.48 * fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12 * fem),
                    gradient: LinearGradient(
                      begin: Alignment(-2, 0),
                      end: Alignment(0, 2),
                      colors: <Color>[Color(0xff3995f0), Color(0xff2cb2c1)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // autogroupttpyAGW (K9Ekk2Yax7uBwMyPoMtTpy)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 18.11 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // dianneameter1H8 (3:149)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 182.75 * fem, 0 * fem),
                              child: Text(
                                'Ansana',
                                style: SafeGoogleFont(
                                  'Abel',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.275 * ffem / fem,
                                  letterSpacing: 1 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // logo6pN (3:150)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1.21 * fem),
                              width: 38.54 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2 * fem),
                              ),
                              child: Center(
                                // maskdpJ (3:151)
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 21.64 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(2 * fem),
                                      color: Color(0xff329ab6),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // texty7U (3:153)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 19.89 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // balanceW7Q (3:154)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 5 * fem),
                              child: Text(
                                'Balance',
                                style: SafeGoogleFont(
                                  'Abel',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.275 * ffem / fem,
                                  letterSpacing: 1 * fem,
                                  color: Color(0xff73bde7),
                                ),
                              ),
                            ),
                            Text(
                              // 25k (3:155)
                              'Rs 5,310.50',
                              style: SafeGoogleFont(
                                'Abel',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.275 * ffem / fem,
                                letterSpacing: 1 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupozk7m3L (K9Eks2LvnfaXn3NoM4ozK7)
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // textuvE (3:156)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 1.21 * fem, 83.96 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem, 1 * fem, 5.07 * fem, 0 * fem),
                              height: 17.32 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    // cardlimitDg2 (3:157)
                                    margin: EdgeInsets.fromLTRB(0 * fem,
                                        0 * fem, 36.26 * fem, 0.32 * fem),
                                    child: Text(
                                      'Card Limit',
                                      style: SafeGoogleFont(
                                        'Abel',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.275 * ffem / fem,
                                        letterSpacing: 1 * fem,
                                        color: Color(0xff73bde7),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // Wf8 (3:158)
                                    'RS 7.500',
                                    style: SafeGoogleFont(
                                      'Abel',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.275 * ffem / fem,
                                      letterSpacing: 1 * fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              // rU6 (3:159)
                              '02/27',
                              textAlign: TextAlign.right,
                              style: SafeGoogleFont(
                                'Abel',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.275 * ffem / fem,
                                letterSpacing: 1 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // distancewithfriendsnsY (2:93)
              left: 38 * fem,
              top: 319 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 38 * fem, 0 * fem, 0 * fem),
                width: 299 * fem,
                height: 173 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xfff0e8e8)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(25 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupv6mtG22 (K9EmLBEMJG95CdYAJSv6mT)
                      margin: EdgeInsets.fromLTRB(
                          23 * fem, 0 * fem, 29 * fem, 33 * fem),
                      width: double.infinity,
                      height: 30 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupnsaraHc (K9EmRg5C2Yk8MsvhEMnSaR)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 69 * fem, 0 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // gallery6mk (2:94)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 1 * fem),
                                  child: Text(
                                    'Gallery',
                                    style: SafeGoogleFont(
                                      'Prompt',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.158999988 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  // selectfromgalleryck6 (2:95)
                                  'Select from Gallery',
                                  style: SafeGoogleFont(
                                    'Prompt',
                                    fontSize: 10 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.1590000153 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group5386MSn (2:96)
                            width: 85 * fem,
                            height: 28.71 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // unsplashbbmi4njjkk8thc (2:97)
                                  left: 0 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 28.71 * fem,
                                      height: 28.71 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              14.3571434021 * fem),
                                          color: Color(0xffc4c4c4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/page-1/images/unsplash-bbmi4njjkk8-bg.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // unsplashwnolnjo7ts8Ncn (2:98)
                                  left: 18 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 28.71 * fem,
                                      height: 28.71 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              14.3571434021 * fem),
                                          color: Color(0xffc4c4c4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/page-1/images/unsplash-wnolnjo7ts8-bg.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // unsplash2crxtr4jckcUQv (2:99)
                                  left: 39.8775024414 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 28.71 * fem,
                                      height: 28.71 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              14.3571434021 * fem),
                                          color: Color(0xffc4c4c4),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/page-1/images/unsplash-2crxtr4jckc-bg.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // ellipse271m98 (2:100)
                                  left: 56.2856750488 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 28.71 * fem,
                                      height: 28.71 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              14.3571434021 * fem),
                                          color: Color(0xff0082b4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // gmt (2:101)
                                  left: 66 * fem,
                                  top: 9 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 10 * fem,
                                      height: 12 * fem,
                                      child: Text(
                                        '7+',
                                        style: SafeGoogleFont(
                                          'Prompt',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.1590000153 * ffem / fem,
                                          color: Color(0xffffffff),
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
                      // autogroupbud7Bie (K9EmevC89WZfhXE51sbuD7)
                      padding: EdgeInsets.fromLTRB(
                          72 * fem, 14 * fem, 41 * fem, 14 * fem),
                      width: double.infinity,
                      height: 90 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff0082b4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup7r8mJHU (K9Emjv3oB3UdJHweQX7r8M)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 58 * fem, 32 * fem),
                            width: 84 * fem,
                            height: 30 * fem,
                            child: Container(
                              // frame1e6S (4:191)
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // cameray8i (4:192)
                                    margin: EdgeInsets.fromLTRB(
                                        2 * fem, 0 * fem, 0 * fem, 1 * fem),
                                    child: Text(
                                      'Camera',
                                      style: SafeGoogleFont(
                                        'Prompt',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.158999988 * ffem / fem,
                                        color: Color(0xfffbfbfb),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // shootoncameraGtW (4:193)
                                    'Shoot on Camera',
                                    style: SafeGoogleFont(
                                      'Prompt',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.1590000153 * ffem / fem,
                                      color: Color(0xfffbfbfb),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // autogroupvakfQzi (K9EmrkBkSfvbx9TQ78vaKF)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 19 * fem),
                            width: 120 * fem,
                            height: 39 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(25 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Take Now',
                                style: SafeGoogleFont(
                                  'Prompt',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1590000153 * ffem / fem,
                                  color: Color(0xff000000),
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
          ],
        ),
      ),
    );
  }

  report() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(23 * fem, 19 * fem, 38 * fem, 20 * fem),
        width: 329 * fem,
        height: 83 * fem,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x0f0082b4)),
          color: Color(0x0f0283b5),
          borderRadius: BorderRadius.circular(21 * fem),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupffavabp (K9Ek7TmBNfpWU7zfXVfFaV)
              margin: EdgeInsets.fromLTRB(0 * fem, 8 * fem, 155 * fem, 7 * fem),
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // reportno1K3c (2:70)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    child: Text(
                      'Report No 1',
                      style: SafeGoogleFont(
                        'Prompt',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.1590000788 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Text(
                    // allappuzhadiW (2:71)
                    'Allappuzha',
                    style: SafeGoogleFont(
                      'Prompt',
                      fontSize: 8 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.1590000391 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouprxuumZp (K9EkGNfzjmeYxJ95JiRxUu)
              width: 44 * fem,
              height: 44 * fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-rxuu.png',
                width: 44 * fem,
                height: 44 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
