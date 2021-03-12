import 'dart:async';

import 'package:alphahoodtask/Home.dart';
import 'package:alphahoodtask/Myaccount.dart';
import 'package:alphahoodtask/NoticeBoard.dart';
import 'package:flutter/material.dart';

class Verified extends StatefulWidget {
  Verified1 createState() => Verified1();
}

class Verified1 extends State<Verified> with TickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;

  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation =
        CurvedAnimation(parent: _animationController, curve: Curves.bounceOut);
    _animationController.forward();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: ScaleTransition(
            scale: _animation,
            child: Icon(
              Icons.check,
              color: Colors.blue[700],
              size: 65,
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue[700], width: 15),
          ),
        ),
      ),
    );
  }
}
