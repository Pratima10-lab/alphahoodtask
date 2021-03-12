import 'package:alphahoodtask/Home.dart';
import 'package:alphahoodtask/Pinverification.dart';

import 'package:alphahoodtask/confirmId.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen1 createState() => HomeScreen1();
}

class HomeScreen1 extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController _animationController, welcome;
  Animation _animation, _welcome;

  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.fastOutSlowIn));
    _animationController.forward();

    welcome =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    _welcome = CurvedAnimation(parent: welcome, curve: Curves.fastOutSlowIn);
    welcome.forward();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
        animation: _animationController,
        builder: (context, widget) {
          return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Center(
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 150),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          scale: _welcome,
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                              fontFamily: "Quicksand-bold",
                              fontSize: 50,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      ScaleTransition(
                          scale: _welcome,
                          child: Text(
                            "enter your registered no\n\n",
                            style: TextStyle(
                                fontSize: 25, fontFamily: "Quicksand"),
                          )),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              child: CountryCodePicker(
                                onChanged: print,
                                initialSelection: 'IN',
                                favorite: ['+91', 'IN'],
                                flagWidth: 30,
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 20),
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xff045DE9)),
                            ),
                            flex: 1,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                                child: TextField(
                                    style: TextStyle(
                                        fontSize: 20, fontFamily: "Quicksand"),
                                    decoration: InputDecoration(
                                      border: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                    ))),
                            flex: 2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Transform(
                          child: Row(
                            children: [
                              Container(
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
                              ),
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
                                                  ConfirmId()));
                                    },
                                    child: Container(
                                      height: 65,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Next",
                                              style: TextStyle(
                                                  fontFamily: "Quicksand",
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
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
                    ],
                  ),
                ),
              ));
        });
  }
}
