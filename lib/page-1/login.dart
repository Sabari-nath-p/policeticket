import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:myapp/page-1/iphone-11-pro-x-14.dart';

import 'package:myapp/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatefulWidget {
  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController nameText = TextEditingController();
  TextEditingController passwordText = TextEditingController();
  TextEditingController emailText = TextEditingController();

  bool isLoading = false;
  bool isLogin = false;
  double fem = 0;
  double ffem = 0;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    fem = MediaQuery.of(context).size.width / baseWidth;
    ffem = fem * 0.8;
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        // loginTBL (9:229)
        padding: EdgeInsets.fromLTRB(25 * fem, 26 * fem, 25 * fem, 256 * fem),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(60 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
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
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
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
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 18 * fem,
                          height: 14.32 * fem,
                          child: Image.asset(
                            'assets/page-1/images/frame-51103.png',
                            width: 18 * fem,
                            height: 14.32 * fem,
                          ),
                        ),
                        Expanded(
                            child: TextField(
                          controller: emailText,
                          style: mystyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            isCollapsed: true,
                            hintText: "Sign Up Email",
                            hintStyle: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.6000000238 * ffem / fem,
                              color: Color(0xff979797),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  Container(
                    // inputfieldcVU (9:234)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
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
                              0 * fem, 0 * fem, 10 * fem, 0 * fem),
                          width: 18 * fem,
                          height: 14.32 * fem,
                          child: Image.asset(
                            'assets/page-1/images/frame-51103.png',
                            width: 18 * fem,
                            height: 14.32 * fem,
                          ),
                        ),
                        Expanded(
                            child: TextField(
                          controller: passwordText,
                          style: mystyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            isCollapsed: true,
                            hintText: "Enter Password",
                            hintStyle: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.6000000238 * ffem / fem,
                              color: Color(0xff979797),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  if (!isLogin)
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
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 18 * fem,
                            height: 14.32 * fem,
                            child: Image.asset(
                              'assets/page-1/images/frame-51103.png',
                              width: 18 * fem,
                              height: 14.32 * fem,
                            ),
                          ),
                          Expanded(
                              child: TextField(
                            controller: nameText,
                            style: mystyle(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              isCollapsed: true,
                              hintText: "Enter Name",
                              hintStyle: SafeGoogleFont(
                                'Poppins',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.6000000238 * ffem / fem,
                                color: Color(0xff979797),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                  if (isLogin)
                    InkWell(
                      onTap: () {
                        if (passwordText.text.isNotEmpty &&
                            emailText.text.isNotEmpty) {
                          sendlogin(
                              emailText.text.trim(), passwordText.text.trim());
                        } else {
                          Fluttertoast.showToast(msg: "Please fill");
                        }
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: (isLoading)
                            ? LoadingAnimationWidget.staggeredDotsWave(
                                color: Colors.white, size: 25)
                            : Text(
                                "sign In",
                                style: mystyle(color: Colors.white, size: 23),
                              ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ),
                    ),
                  if (!isLogin)
                    InkWell(
                      onTap: () {
                        if (nameText.text.isNotEmpty &&
                            passwordText.text.isNotEmpty &&
                            emailText.text.isNotEmpty) {
                          sendsignup(
                              emailText.text, passwordText.text, nameText.text);
                        } else {
                          Fluttertoast.showToast(msg: "Please fill");
                        }
                      },
                      child: Container(
                        width: 200,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: (isLoading)
                            ? LoadingAnimationWidget.staggeredDotsWave(
                                color: Colors.white, size: 25)
                            : Text(
                                "Sign Up",
                                style: mystyle(color: Colors.white, size: 23),
                              ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black),
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  if (!isLogin)
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already Have an Account?',
                            style: mystyle(size: 14),
                          ),
                          Text(
                            ' ',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.7000001272 * ffem / fem,
                              color: Color(0xff767a8a),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isLogin = !isLogin;
                              });
                            },
                            child: Text(
                              'Sign in',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.7000001272 * ffem / fem,
                                color: Color(0xff1f7ae0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (isLogin)
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'you, didn\'t have an account?',
                            style: mystyle(size: 14),
                          ),
                          Text(
                            ' ',
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.7000001272 * ffem / fem,
                              color: Color(0xff767a8a),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isLogin = !isLogin;
                              });
                            },
                            child: Text(
                              'Sign up',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.7000001272 * ffem / fem,
                                color: Color(0xff1f7ae0),
                              ),
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

  mystyle({Color color = const Color(0xff979797), double size = 16}) {
    return SafeGoogleFont(
      'Poppins',
      fontSize: size * ffem,
      fontWeight: FontWeight.w500,
      height: 1.6000000238 * ffem / fem,
      color: color,
    );
  }

  sendlogin(String email, String password) {
    setState(() {
      isLoading = true;
    });
    CollectionReference users = FirebaseFirestore.instance.collection('user');
    users.doc(email).get().then((value) async {
      if (value.exists) {
        if (password == value.get("password").toString()) {
          print(value.data());
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString("LOGIN", "IN");
          pref.setString("EMAIL", email);
          pref.setString("PASSWORD", password);
          pref.setString("NAME", value.get("name").toString());
          // if (value.get("admin").exists)
          // pref.setString("ISADMIN", value.get("admin").toString());
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Scene()));
          Fluttertoast.showToast(msg: "Sucessfully Logined");
        } else {
          setState(() {
            isLoading = false;
          });
          Fluttertoast.showToast(msg: "Login failed , invalid Credential");
        }
      } else {
        Fluttertoast.showToast(msg: "Login failed , invalid Credential");
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  sendsignup(String email, String password, String name) {
    setState(() {
      isLoading = true;
    });
    CollectionReference users = FirebaseFirestore.instance.collection('user');
    users
        .doc(email)
        .set({"password": password, "name": name}).whenComplete(() async {
      Fluttertoast.showToast(msg: "Account Created");
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("LOGIN", "IN");
      pref.setString("EMAIL", email);
      pref.setString("PASSWORD", password);
      pref.setString("NAME", name);
      // Navigator.of(context).pop();
      Navigator.of(context).pop();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Scene()));
      Fluttertoast.showToast(msg: "account created");
    }).onError((error, stackTrace) {
      setState(() {
        isLoading = false;
      });
      Fluttertoast.showToast(msg: "Something went to wrong, please try again");
    });
  }
}
