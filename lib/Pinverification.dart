import 'dart:async';

import 'package:alphahoodtask/Verified.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinVerfication extends StatefulWidget {
  PinVerification1 createState() => PinVerification1();
}

class PinVerification1 extends State<PinVerfication>
    with TickerProviderStateMixin {
  String s = "";
  int time = 30;
  AnimationController _animationController, _text;
  Animation _animation, _welcome, _textAnimation;
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );
    _animation = Tween<double>(begin: 1.0, end: 0.7).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    _animationController.forward();

    _text = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 700),
    );
    _textAnimation = Tween<double>(begin: 1.0, end: 0.0)
        .animate(CurvedAnimation(parent: _text, curve: Curves.fastOutSlowIn));
    _text.forward();
    setState(() {});
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (time <= 1) {
          time = 30;
        } else {
          time -= 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: _text,
        builder: (context, w) {
          return Scaffold(
              body: Container(
            margin: EdgeInsets.only(left: 25, right: 25, top: 150),
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff045DE9)),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Verify your number",
                  style: TextStyle(
                    fontFamily: "Quicksand-bold",
                    fontSize: 28,
                  ),
                ),
                ScaleTransition(
                    alignment: Alignment.topLeft,
                    scale: _animation,
                    child: Text(
                      "enter the otp sent to +917304124648\n",
                      style: TextStyle(fontSize: 22, fontFamily: "Quicksand"),
                    )),
                PinCodeTextField(
                    onCompleted: (s) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Verified()));
                    },
                    animationType: AnimationType.slide,
                    obscuringCharacter: "*",
                    appContext: (context),
                    boxShadows: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    textStyle: TextStyle(
                        fontSize: 50, height: 1.6, color: Colors.white),
                    obscureText: true,
                    showCursor: true,
                    pinTheme: PinTheme(
                      selectedFillColor: Colors.blue[200],
                      activeFillColor: Color(0xff045DE9),
                      inactiveFillColor: Colors.blue[200],
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(15),
                      fieldHeight: 70,
                      borderWidth: 0,
                      selectedColor: Colors.blue[200],
                      fieldWidth: 70,
                    ),
                    enableActiveFill: true,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    length: 4,
                    onChanged: (s) {}),
                Transform(
                  transform: Matrix4.translationValues(
                      0.0, _textAnimation.value * height, 0.0),
                  child: Text(
                    "Having trouble? Request a new OTP in 00:" +
                        time.toString(),
                    style: TextStyle(fontSize: 18, fontFamily: "Quicksand"),
                  ),
                )
              ],
            )),
          ));
        });
  }
}
