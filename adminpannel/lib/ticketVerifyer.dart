import 'package:adminpannel/fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class TicketVerifyer extends StatefulWidget {
  List tk;
  ValueNotifier notifier;
  TicketVerifyer({super.key, required this.tk, required this.notifier});

  @override
  State<TicketVerifyer> createState() => _TicketVerifyerState(tk: tk);
}

class _TicketVerifyerState extends State<TicketVerifyer> {
  List tk;

  List penalty = [
    ["Modification", 500],
    ["Traffic Violation", 750],
    ["Offensive Driving", 2000]
  ];
  _TicketVerifyerState({required this.tk});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: InstaImageViewer(
                        child: Image(
                          image: Image.network(
                            tk[4],
                            fit: BoxFit.fill,
                          ).image,
                        ),
                      )))),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var tt in penalty)
                  InkWell(
                    onTap: () {
                      print("working");
                      showDialog(
                          context: context,
                          builder: (context) => Container(
                                child: Center(
                                  child:
                                      LoadingAnimationWidget.staggeredDotsWave(
                                          size: 30, color: Colors.orange),
                                ),
                              ));
                      FirebaseFirestore db = FirebaseFirestore.instance;
                      db.collection("collection").doc(tk[0]).update({
                        "status": "APPROVED",
                        "amount": "${tt[1]}"
                      }).whenComplete(() async {
                        widget.notifier.value++;
                        Future.delayed(Duration(seconds: 2));

                        Navigator.pop(context);
                        Navigator.pop(context);
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      child: Text(
                        tt[0],
                        style: SafeGoogleFont("Poppins",
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              print("working");
              showDialog(
                  context: context,
                  builder: (context) => Container(
                        child: Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                              size: 30, color: Colors.orange),
                        ),
                      ));
              FirebaseFirestore db = FirebaseFirestore.instance;
              db.collection("collection").doc(tk[0]).update({
                "status": "REJECTED",
              }).whenComplete(() async {
                widget.notifier.value++;
                Future.delayed(Duration(seconds: 2));

                Navigator.pop(context);
                Navigator.pop(context);
              });
            },
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 10,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
              child: Text(
                "Reject",
                style: SafeGoogleFont("Poppins",
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
