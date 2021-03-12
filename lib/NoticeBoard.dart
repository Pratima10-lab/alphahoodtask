import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Noticeboard extends StatefulWidget {
  Noticeboard1 createState() => Noticeboard1();
}

class Noticeboard1 extends State<Noticeboard> {
  shownotice() {
    return Container(
      margin: EdgeInsets.only(top: 35),
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.blue])),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Holi Holiday",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Quicksand-bold",
                    fontSize: 25),
              ),
              Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text("Holiday"),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
              "\nActivate every muscle group to\nget the results you've always\nwanted.",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: "Quicksand")),
          Align(
              alignment: Alignment.bottomRight,
              child: Text("15 March 2021",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: "Quicksand")))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 20,
                  height: 20,
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.black,
                  )),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                ),
              ),
              centerTitle: true,
              title: Text(
                "Notice Board",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "Quicksand-bold",
                    fontSize: 22,
                    color: Colors.black),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 575),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            curve: Curves.fastOutSlowIn,
                            child: FadeInAnimation(child: shownotice()),
                          ));
                    })),
            SizedBox(
              height: 35,
            )
          ],
        ),
      ),
    ));
  }
}
