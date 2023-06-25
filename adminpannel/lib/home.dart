import 'package:adminpannel/login.dart';
import 'package:adminpannel/ticketVerifyer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'fonts.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List ticketList = [];
  ValueNotifier notifier = ValueNotifier(10);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadTickets();
    loadNotifier();
  }

  loadNotifier() {
    notifier.addListener(() {
      setState(() {
        ticketList.clear();
        loadTickets();
      });
    });
  }

  loadTickets() {
    FirebaseFirestore db = FirebaseFirestore.instance;
    db
        .collection("collection")
        .where("status", isEqualTo: "PENDING")
        .get()
        .then((value) {
      if (value.docs.isNotEmpty) {
        setState(() {
          for (var tk in value.docs) {
            List temp = [];
            temp.add(tk.id);
            temp.add(tk.get("number"));
            DateTime time = DateTime.parse(tk.get("date"));
            String date =
                DateFormat('yyyy-MM-dd kk:mm').format(time).toString();
            temp.add(date);
            temp.add(tk.get("status"));
            temp.add(tk.get("image"));

            ticketList.add(temp);
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                      child: Text(
                    "Admin Dashboard",
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0a0d14),
                    ),
                  )),
                  InkWell(
                    onTap: () async {
                      SharedPreferences pref =
                          await SharedPreferences.getInstance();
                      pref.setString("LOGIN", "OUT");
                      Navigator.pop(context);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => signup()));
                    },
                    child: SizedBox(
                      width: 30,
                      child: Icon(Icons.logout),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "      Pending checkList",
                    style: SafeGoogleFont("Poppins",
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Expanded(child: Container()),
                  Text(
                    ticketList.length.toString(),
                    style: SafeGoogleFont("Poppins",
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(.1)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (var tk in ticketList)
                        Container(
                          height: 100,
                          margin:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                                  child: InkWell(
                                    onTap: () {
                                      showDialog(
                                          //  barrierColor: Colors.transparent,
                                          context: context,
                                          builder: (context) => Material(
                                                color: Colors.transparent,
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    child: TicketVerifyer(
                                                      tk: tk,
                                                      notifier: notifier,
                                                    )),
                                              ));
                                    },
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
                                        "CHECK UP",
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
