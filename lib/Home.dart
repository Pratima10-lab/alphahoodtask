import 'package:alphahoodtask/Myaccount.dart';
import 'package:alphahoodtask/NoticeBoard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class Home extends StatefulWidget {
  Home1 createState() => Home1();
}

class Home1 extends State<Home> {
  bool a = false, b = false, c = false, d = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    margin: EdgeInsets.only(left: 25, right: 25, top: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 120,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 70,
                                    child: Icon(
                                      Icons.calendar_today,
                                      size: 35,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        shape: BoxShape.circle),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "\nMonday",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.grey),
                                      ),
                                      Text(
                                        "25 October",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Quicksand-bold",
                                            fontSize: 30),
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Myaccount()));
                                      },
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/Avatar.png"),
                                        maxRadius: 35,
                                      ))
                                ],
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Noticeboard()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 35),
                              padding:
                                  EdgeInsets.only(top: 20, left: 20, right: 20),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            borderRadius:
                                                BorderRadius.circular(10)),
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
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "Quicksand")),
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
                            ),
                          ),
                          Text("\nLive Updates\n",
                              style: TextStyle(
                                  fontFamily: "Quicksand", fontSize: 18)),
                          Container(
                            height: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.calendar_today,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "\n90%",
                                        style: TextStyle(
                                            fontFamily: "Quicksand-bold",
                                            color: Colors.white,
                                            fontSize: 17),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Attendance",
                                          style: TextStyle(
                                              fontFamily: "Quicksand",
                                              color: Colors.white,
                                              fontSize: 15))
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffF15223),
                                            Color(0xffFC575E)
                                          ])),
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.notes,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "\nB Grade",
                                        style: TextStyle(
                                            fontFamily: "Quicksand-bold",
                                            color: Colors.white,
                                            fontSize: 17),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text("Progress",
                                          style: TextStyle(
                                              fontFamily: "Quicksand",
                                              color: Colors.white,
                                              fontSize: 15))
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xff5F72BE),
                                            Color(0xff9921E8)
                                          ])),
                                )),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.calendar_today,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              "\nNo Due",
                                              style: TextStyle(
                                                  fontFamily: "Quicksand-bold",
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Fees",
                                                style: TextStyle(
                                                    fontFamily: "Quicksand",
                                                    color: Colors.white,
                                                    fontSize: 15))
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xffFFDD00),
                                                  Color(0xffFBB034)
                                                ])))),
                              ],
                            ),
                          ),
                          Text("\nHomework\n",
                              style: TextStyle(
                                  fontFamily: "Quicksand", fontSize: 18)),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                            color: Colors.grey[200],
                            child: ListTile(
                                title: Text(
                                  "Learn chapter 5 with one Essay",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Quicksand-bold",
                                  ),
                                ),
                                subtitle: Text(
                                  "English / Today",
                                  style: TextStyle(fontFamily: "Quicksand"),
                                ),
                                leading: CircularCheckBox(
                                  onChanged: (bool value) {
                                    setState(() {
                                      a = value;
                                    });
                                  },
                                  value: a,
                                )
                                //
                                ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                            color: Colors.grey[200],
                            child: ListTile(
                                title: Text(
                                  "Exercise Trignometry 1st Topic",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Quicksand-bold",
                                  ),
                                ),
                                subtitle: Text(
                                  "Maths / Today",
                                  style: TextStyle(fontFamily: "Quicksand"),
                                ),
                                leading: CircularCheckBox(
                                  onChanged: (bool value) {
                                    setState(() {
                                      b = value;
                                    });
                                  },
                                  value: b,
                                )
                                //
                                ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                            color: Colors.grey[200],
                            child: ListTile(
                                title: Text(
                                  "Hindi writing 3 pages",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Quicksand-bold",
                                  ),
                                ),
                                subtitle: Text(
                                  "Hindi / Today",
                                  style: TextStyle(fontFamily: "Quicksand"),
                                ),
                                leading: CircularCheckBox(
                                  onChanged: (bool value) {
                                    setState(() {
                                      c = value;
                                    });
                                  },
                                  value: c,
                                )
                                //
                                ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                            color: Colors.grey[200],
                            child: ListTile(
                                title: Text(
                                  "Learn chapter 5 with one Essay",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: "Quicksand-bold",
                                  ),
                                ),
                                subtitle: Text(
                                  "English / Today",
                                  style: TextStyle(fontFamily: "Quicksand"),
                                ),
                                leading: CircularCheckBox(
                                  onChanged: (bool value) {
                                    setState(() {
                                      d = value;
                                    });
                                  },
                                  value: d,
                                )
                                //
                                ),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ])))));
  }
}
