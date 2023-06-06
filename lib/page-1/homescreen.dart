import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagekit_io/imagekit_io.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils.dart';

class homescreen extends StatefulWidget {
  homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var number_plate = TextEditingController();

  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  String imgurl = "";
  String email = "";
  String name = "";
  int balance = 0;
  loadUser() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      email = pref.getString("EMAIL").toString();
      name = pref.getString("NAME").toString();
      String tem = pref.getString("IMAGE").toString();
      if (tem != "null")
        imgurl = tem;
      else
        imgurl =
            "https://www.disneyplusinformer.com/wp-content/uploads/2021/06/Luca-Profile-Avatars-3.png";
      loadTickets();
    });
  }

  List tickets = [];
  loadTickets() {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection("collection")
        .where("email", isEqualTo: email)
        .get()
        .then((value) {
      print(value.docs);
      setState(() {
        for (var tk in value.docs) {
          List temp = [];
          temp.add(tk.id);
          temp.add(tk.get("number"));
          DateTime time = DateTime.parse(tk.get("date"));
          String date = DateFormat('yyyy-MM-dd kk:mm').format(time).toString();
          temp.add(date);
          temp.add(tk.get("status"));

          if (tk.get("status") == "APPROVED") {
            double val = double.parse(tk.get("amount").toString()) * 20 / 100;
            balance = balance + val.round();
          }
          tickets.add(temp);
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadUser();
    // loadTickets();
  }

  int bottomSelected = 0;

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
          child: Stack(
            children: [
              if (bottomSelected == 0)
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 90,
                  top: 0,
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
                                '$name',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                            )),
                            if (imgurl != "")
                              Expanded(
                                  child: Container(
                                      color: Colors.white,
                                      padding: EdgeInsets.all(9),
                                      alignment: Alignment.centerRight,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(imgurl),
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
                                    "Ticking Voluenteer #2023",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
                              Positioned(
                                  top: 30,
                                  left: 20,
                                  child: Text(
                                    "$name",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
                              Positioned(
                                  top: 50,
                                  left: 20,
                                  child: Text(
                                    "$email",
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
                                    "Rs  $balance/-",
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
                                  color: Colors.grey.withOpacity(.7),
                                  width: 2)),
                          margin: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
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
                                              color:
                                                  Colors.black.withOpacity(.5)),
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
                                              color:
                                                  Colors.white.withOpacity(.5)),
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
                                                borderRadius:
                                                    BorderRadius.circular(20),
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
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                        for (var tk in tickets)
                          Container(
                            height: 100,
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff0082B4).withOpacity(.09)),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 20,
                                    top: 20,
                                    child: Text(
                                      "Report No: ${genid()}",
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
                                      "Vehicle Number: ${tk[1]}",
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
                                      "Ticket Date: ${tk[2]}",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )),
                                Positioned(
                                    right: 20,
                                    top: 10,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: (tk[3] == "APPROVED")
                                            ? Colors.green
                                            : (tk[3] == "PENDING")
                                                ? Colors.orange
                                                : Colors.redAccent,
                                      ),
                                      child: Text(
                                        "${tk[3]}",
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
              if (bottomSelected == 2)
                Positioned(
                    left: 0,
                    right: 0,
                    top: 0,
                    bottom: 90,
                    child: Container(
                      alignment: Alignment.center,
                      child: Container(
                        width: 300,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff00082B4).withOpacity(.09)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 120,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(imgurl),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                final ImagePicker picker = ImagePicker();
                                final XFile? image;
//  Pick an image.f

                                image = await picker.pickImage(
                                    source: ImageSource.gallery);

                                File im = File(image!.path);
                                Fluttertoast.showToast(
                                    msg: "your image will be change shortly");
                                ImageKit.io(im.readAsBytesSync(),
                                        onUploadProgress: (load) {},
                                        privateKey:
                                            "private_/ixEFm8zmvLC+cRnpsQoDFgPdQ0=",
                                        fileName: DateTime.now().toString())
                                    .then((value) async {
                                  setState(() {
                                    imgurl = value.url.toString();
                                  });
                                  SharedPreferences preferences =
                                      await SharedPreferences.getInstance();
                                  preferences.setString(
                                      "IMAGE", value.url.toString());
                                });
                              },
                              child: Text(
                                "Change",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "$name",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff00082B4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "$email",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                          ],
                        ),
                      ),
                    )),
              Positioned(
                  bottom: 20,
                  right: 20,
                  left: 20,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff0082B4).withOpacity(.09)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              bottomSelected = 0;
                            });
                          },
                          child: Icon(
                            (bottomSelected == 0)
                                ? Icons.home
                                : Icons.home_outlined,
                            color: (bottomSelected == 0)
                                ? Color(0xff0082B4)
                                : Colors.grey,
                            size: (bottomSelected == 0) ? 35 : 25,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bottomSelected = 1;
                            });
                          },
                          child: Icon(
                            (bottomSelected == 1)
                                ? Icons.wallet
                                : Icons.wallet_outlined,
                            color: (bottomSelected == 1)
                                ? Color(0xff0082B4)
                                : Colors.grey,
                            size: (bottomSelected == 1) ? 35 : 25,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bottomSelected = 2;
                            });
                          },
                          child: Icon(
                            (bottomSelected == 2)
                                ? Icons.settings
                                : Icons.settings_outlined,
                            color: (bottomSelected == 2)
                                ? Color(0xff0082B4)
                                : Colors.grey,
                            size: (bottomSelected == 2) ? 35 : 25,
                          ),
                        ),
                      ],
                    ),
                  )),
              if (bottomSelected == 1)
                Positioned(
                    left: 20,
                    right: 20,
                    bottom: 100,
                    top: 100,
                    child: Center(
                      child: Text(
                        "Currently No Permission to Link this with bank account,it will violate RBI policy, wallet transfer is not applicable",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ))
            ],
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
    bool loading = false;
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
                  child: StatefulBuilder(builder: (context, reset) {
                    return Container(
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
                            'Enter Vehicle No ',
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            margin: EdgeInsets.only(left: 20, right: 20),
                            child: TextField(
                              controller: textcontroller,
                              maxLines: null,
                              decoration: InputDecoration(
                                  hintText: "Enter Vehicle Number",
                                  isCollapsed: false,
                                  isDense: true,
                                  border: InputBorder.none),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              reset(() {
                                loading = true;
                              });
                              String url = "";
                              File im = File(image!.path);
                              ImageKit.io(im.readAsBytesSync(),
                                      onUploadProgress: (load) {},
                                      privateKey:
                                          "private_/ixEFm8zmvLC+cRnpsQoDFgPdQ0=",
                                      fileName: DateTime.now().toString())
                                  .then((value) {
                                FirebaseFirestore firebase =
                                    FirebaseFirestore.instance;
                                firebase.collection("collection").add({
                                  "email": email,
                                  "number": textcontroller.text.trim(),
                                  "image": value.url,
                                  "status": "PENDING",
                                  "date": DateTime.now().toString()
                                });
                                reset(() {
                                  loading = false;
                                });
                                Navigator.pop(context);
                                Fluttertoast.showToast(
                                    msg: "You Complaint is uploaded");
                                setState(() {
                                  tickets.clear();
                                  balance = 0;
                                });
                                loadTickets();
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff0082B4)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              child: (loading)
                                  ? LoadingAnimationWidget.staggeredDotsWave(
                                      color: Colors.white, size: 24)
                                  : Text(
                                      "Upload",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ));
  }
}
