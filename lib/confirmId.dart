import 'dart:async';

import 'package:alphahoodtask/Home.dart';
import 'package:alphahoodtask/Pinverification.dart';
import 'package:alphahoodtask/Verified.dart';
import 'package:alphahoodtask/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated/animated.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ConfirmId extends StatefulWidget {
  ConfirmId1 createState() => ConfirmId1();
}

class ConfirmId1 extends State<ConfirmId> with TickerProviderStateMixin {
  Animation _animation, _account;
  String s;
  AnimationController _animationController, _accountController;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween<double>(begin: 0.0, end: 0.9).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    _animationController.forward();

    _accountController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _account = Tween<double>(begin: 1.0, end: 0.8).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));

    _accountController.forward();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2 - 150;
    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, widget) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Center(
                child: Container(
                  margin: EdgeInsets.only(
                      left: 30, right: 30, top: 150, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff045DE9)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ScaleTransition(
                          alignment: Alignment.topLeft,
                          scale: _account,
                          child: Text(
                            "Choose the account",
                            style: TextStyle(
                                fontSize: 35, fontFamily: "Quicksand-bold"),
                          )),
                      ScaleTransition(
                          alignment: Alignment.topLeft,
                          scale: _account,
                          child: Text(
                            "Confirm your ID\n\n",
                            style: TextStyle(
                                fontSize: 28, fontFamily: "Quicksand"),
                          )),
                      ListTile(
                        minVerticalPadding: 0.0,
                        minLeadingWidth: 50,
                        horizontalTitleGap: 10.0,
                        contentPadding: EdgeInsets.zero,
                        leading: Image(
                          image: AssetImage("assets/images/Avatar.png"),
                          width: 50,
                          height: 50,
                        ),
                        title: Text(
                          "Prathibha Yadav",
                          style: TextStyle(
                              fontFamily: "Quicksand-bold", fontSize: 22),
                        ),
                        trailing: Container(
                          width: 50,
                          height: 50,
                          child: Icon(Icons.arrow_drop_down),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey)),
                        ),
                        subtitle: Container(
                          width: 50,
                          margin: EdgeInsets.only(top: 10, right: 100),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff045DE9)),
                          child: Center(
                            child: Text(
                              "Class VIII A",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Transform(
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
                                  },
                                  child: Container(
                                    height: 65,
                                    width: 60,
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff045DE9)),
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 2,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PinVerfication()));
                                    },
                                    child: Container(
                                      height: 65,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Accept And Continue",
                                              style: TextStyle(
                                                  fontFamily: "Quicksand",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              size: 25,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: Color(0xff045DE9)),
                                    )),
                              )
                            ],
                          ),
                          transform: Matrix4.translationValues(
                              0.0, _animation.value * height, 0.0)),
                      Expanded(
                          child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 80.0),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: "Quicksand",
                                          color: Colors.black),
                                      text:
                                          "By continuing, you agree to the school_app_project\n"),
                                  TextSpan(
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: "Quicksand"),
                                      text: "Terms of Service  "),
                                  TextSpan(
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Quicksand"),
                                      text: "&  "),
                                  TextSpan(
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: "Quicksand"),
                                      text: "Policy")
                                ]))),
                      ))
                    ],
                  ),
                ),
              ));
        });
  }
}
