import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myaccount extends StatefulWidget {
  Myaccount1 createState() => Myaccount1();
}

class Myaccount1 extends State<Myaccount> with TickerProviderStateMixin {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: Container(
                width: 20,
                height: 20,
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                        child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.black,
                    ))),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)),
              ),
              centerTitle: true,
              actions: [],
              title: Text(
                "My Account",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: "Quicksand-bold",
                    fontSize: 22,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    minVerticalPadding: 0.0,
                    minLeadingWidth: 50,
                    horizontalTitleGap: 10.0,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Prathibha Yadav",
                      style:
                          TextStyle(fontFamily: "Quicksand-bold", fontSize: 22),
                    ),
                    leading: Image(
                      image: AssetImage("assets/images/Avatar.png"),
                      width: 50,
                      height: 50,
                    ),
                    trailing: Container(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.keyboard_arrow_down_rounded),
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
                          color: Colors.blue[700]),
                      child: Center(
                        child: Text(
                          "Class VIII A",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "General",
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.person_outline,
                color: Colors.black,
              ),
              title: Text(
                "About School",
                style: TextStyle(fontFamily: "Quicksand-bold", fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: Text(
                "About #school_app_project",
                style: TextStyle(fontFamily: "Quicksand-bold", fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: Text(
                "Terms & Conditions",
                style: TextStyle(fontFamily: "Quicksand-bold", fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.info_outline,
                color: Colors.black,
              ),
              title: Text(
                "Privacy  Policy",
                style: TextStyle(fontFamily: "Quicksand-bold", fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image(
                image: AssetImage("assets/images/Vector.png"),
              ),
              title: Text(
                "Support",
                style: TextStyle(fontFamily: "Quicksand-bold", fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                "Log Out",
                style: TextStyle(fontFamily: "Quicksand-bold", fontSize: 18),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
