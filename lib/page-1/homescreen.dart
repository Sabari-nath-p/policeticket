import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

import '../utils.dart';

class homescreen extends StatefulWidget {
  homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var number_plate = TextEditingController();

  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //root -- container containes padding and all other element in the homescreen
        child: Container(
          //coloring
          color: Colors.white,

          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: double.infinity,

          //column to includes all element in downwards
          child: SingleChildScrollView(
            child: Column(
              children: [
                // row-section include top header that containes name and Profile Photo

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                      //coloring
                      color: Colors.white,

                      padding: EdgeInsets.all(15),
                      child: Text(
                        'Ansana',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    )),
                    Expanded(
                        child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(9),
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://teqip.in/wp-content/uploads/2022/12/kajal-agarwal.jpg'),
                            )))
                  ],
                ),
                SizedBox(
                  height: 40,
                ),

                ///Container for adding wallet
                ///Defined height ///
                Container(
                  height: 180,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            Color(0xff74BDE7),
                            Color.fromARGB(199, 50, 156, 182),
                            Color.fromARGB(210, 57, 148, 240),
                          ])),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 10,
                          right: 20,
                          child: Text(
                            "Ticking Voluenteer #1232",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                      Positioned(
                          top: 30,
                          left: 20,
                          child: Text(
                            "Sabarinath",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                      Positioned(
                          top: 50,
                          left: 20,
                          child: Text(
                            "Sabarinath5604@gmail.com",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white.withOpacity(.8)),
                          )),
                      Positioned(
                          top: 80,
                          left: 20,
                          child: Text(
                            "Balance  ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white54),
                          )),
                      Positioned(
                          top: 105,
                          left: 20,
                          child: Text(
                            "Rs  10233/-",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )),
                      Positioned(
                          top: 140,
                          left: 20,
                          child: Text(
                            "Expiry : ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white60),
                          )),
                      Positioned(
                          top: 141,
                          left: 80,
                          child: Text(
                            "Mar- 25",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white60),
                          )),
                      Positioned(
                          right: 30,
                          bottom: 15,
                          width: 60,
                          height: 45,
                          child: Image.network(
                            "https://truckquote.com/images/chip-1-logo-png-transparent.png",
                            fit: BoxFit.fill,
                          ))
                    ],
                  ),
                ),

                //Container to add photo and textbox to add car number
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: Colors.grey.withOpacity(.7), width: 2)),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 28,
                                left: 20,
                                child: Text(
                                  "Gallary",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                )),
                            Positioned(
                                top: 50,
                                left: 20,
                                child: Text(
                                  "Select from gallary",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(.5)),
                                )),
                            Positioned(
                                bottom: 20,
                                right: 20,
                                width: 100,
                                child: InkWell(
                                  onTap: () {
                                    checkText();
                                  },
                                  child: Image.network(
                                      "https://th.bing.com/th/id/OIP.qy54btl6xXaUwh9JBcfTSwAAAA?pid=ImgDet&rs=1"),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Color(0xff0082B4),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(37),
                              bottomRight: Radius.circular(37)),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                                top: 18,
                                left: 20,
                                child: Text(
                                  "Camera",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                )),
                            Positioned(
                                top: 41,
                                left: 20,
                                child: Text(
                                  "Shoot on Camera",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(.5)),
                                )),
                            Positioned(
                                right: 20,
                                bottom: 20,
                                child: InkWell(
                                  onTap: () {
                                    checkText(isCamera: true);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                    child: Text("Take Now",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black)),
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //Footer - Section
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Text(
                        'MyTicket  Reports',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < 3; i++)
                  Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0082B4).withOpacity(.09)),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 20,
                            top: 20,
                            child: Text(
                              "Report No: 120344",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                        Positioned(
                            left: 20,
                            top: 50,
                            child: Text(
                              "Vehicle Number: 120344",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Positioned(
                            left: 20,
                            top: 70,
                            child: Text(
                              "Ticket Date: 28-11-2023",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                        Positioned(
                            right: 20,
                            top: 20,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green),
                              child: Text(
                                "Approved",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  checkText({bool isCamera: false}) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image;
//  Pick an image.
    if (!isCamera) {
      image = await picker.pickImage(source: ImageSource.gallery);
    } else {
      image = await picker.pickImage(source: ImageSource.camera);
    }

    InputImage img = InputImage.fromFilePath(image!.path.toString());
    final RecognizedText recognizedText =
        await textRecognizer.processImage(img);

    print(recognizedText.text);
    File file = File(image.path);
    TextEditingController textcontroller = TextEditingController();
    setState(() {
      textcontroller.text = recognizedText.text.replaceAll("\n", "");
    });

    showDialog(
        context: context,

        //backgroundColor: Colors.transparent,

        builder: (context) => Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    width: 350,
                    height: 400,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(.4),
                              blurRadius: 1,
                              spreadRadius: .3)
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Upload you ticket',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5, top: 10),
                          width: double.infinity,
                          height: 150,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.file(file)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Vehicle No :',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          height: 50,
                          padding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          margin: EdgeInsets.only(left: 20, right: 20),
                          child: TextField(
                            controller: textcontroller,
                            decoration: InputDecoration(
                                hintText: "Enter Vehicle Number",
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xff0082B4)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          child: Text(
                            "Upload",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
