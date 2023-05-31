import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.8;
    return Container(
      width: double.infinity,
      child: Container(
        // loginTBL (9:229)
        padding: EdgeInsets.fromLTRB(25 * fem, 26 * fem, 25 * fem, 256 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(60 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // statusbarNJJ (9:252)
              margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 6 * fem, 138 * fem),
              width: double.infinity,
              height: 24 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // foC (9:253)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 220 * fem, 0 * fem),
                    child: Text(
                      '9:45',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff767a8a),
                      ),
                    ),
                  ),
                  Container(
                    // frame162460BFk (9:254)
                    padding:
                        EdgeInsets.fromLTRB(7 * fem, 6 * fem, 2 * fem, 6 * fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // signaliFg (9:255)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 21 * fem, 0 * fem),
                          width: 10 * fem,
                          height: 12 * fem,
                          child: Image.asset(
                            'assets/page-1/images/signal.png',
                            width: 10 * fem,
                            height: 12 * fem,
                          ),
                        ),
                        Container(
                          // battery2nA (9:256)
                          width: 20 * fem,
                          height: 12 * fem,
                          child: Image.asset(
                            'assets/page-1/images/battery.png',
                            width: 20 * fem,
                            height: 12 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame162519a2z (9:230)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // letsgetstartedJjg (9:232)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 19 * fem),
                    child: Text(
                      'Lets Get Started',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff0a0d14),
                      ),
                    ),
                  ),
                  Container(
                    // inputfieldcVU (9:234)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 19 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20 * fem, 22 * fem, 83.5 * fem, 22 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xfff9fafb),
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame511037SE (9:235)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 93.5 * fem, 0 * fem),
                          width: 18 * fem,
                          height: 14.32 * fem,
                          child: Image.asset(
                            'assets/page-1/images/frame-51103.png',
                            width: 18 * fem,
                            height: 14.32 * fem,
                          ),
                        ),
                        Text(
                          // emailRSv (9:237)
                          'Sign Up Email',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.6000000238 * ffem / fem,
                            color: Color(0xff979797),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // oruseinstantsignupZZ8 (9:238)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 18 * fem),
                    child: Text(
                      'Or Use Instant Sign Up',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.7000001272 * ffem / fem,
                        color: Color(0xff0a0d14),
                      ),
                    ),
                  ),
                  Container(
                    // buttonspi (9:239)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 19 * fem),
                    padding: EdgeInsets.fromLTRB(
                        20.46 * fem, 16 * fem, 85.5 * fem, 16 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffdadada)),
                      borderRadius: BorderRadius.circular(24 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // componentMjt (9:240)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 56.96 * fem, 0 * fem),
                          width: 23.09 * fem,
                          height: 23.59 * fem,
                          child: Image.asset(
                            'assets/page-1/images/component.png',
                            width: 23.09 * fem,
                            height: 23.59 * fem,
                          ),
                        ),
                        Text(
                          // signwithgooglefVg (9:241)
                          'Sign With Google',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.6000000238 * ffem / fem,
                            color: Color(0xff0a0d14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // buttonCkW (9:242)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 29 * fem),
                    padding: EdgeInsets.fromLTRB(
                        21.44 * fem, 15.98 * fem, 106 * fem, 15.98 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffdadada)),
                      borderRadius: BorderRadius.circular(25 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // appleiconshxA (9:243)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 47.44 * fem, 0 * fem),
                          width: 21.12 * fem,
                          height: 26.04 * fem,
                          child: Image.asset(
                            'assets/page-1/images/apple-icons.png',
                            width: 21.12 * fem,
                            height: 26.04 * fem,
                          ),
                        ),
                        Text(
                          // signwithappleQra (9:249)
                          'Sign With Apple',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.6000000238 * ffem / fem,
                            color: Color(0xff0a0d14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    // alreadyhaveanaccountsigninYxn (9:251)
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.7000001272 * ffem / fem,
                        color: Color(0xff767a8a),
                      ),
                      children: [
                        TextSpan(
                          text: 'Already Have an Account?',
                        ),
                        TextSpan(
                          text: ' ',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.7000001272 * ffem / fem,
                            color: Color(0xff767a8a),
                          ),
                        ),
                        TextSpan(
                          text: 'Sign In',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.7000001272 * ffem / fem,
                            color: Color(0xff1f7ae0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
