import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mathpuzzle/fourth.dart';
import 'package:mathpuzzle/second.dart';
import 'package:shared_preferences/shared_preferences.dart';

class fi extends StatefulWidget {
  fi({Key? key}) : super(key: key);
  static SharedPreferences? prefs;

  @override
  State<fi> createState() => _fiState();
}

class _fiState extends State<fi> {
  int a = 1;
  String? s;
  bool color = false;
  Border brr=(Border.all(
      color: Colors.transparent,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: StrokeAlign.center));
  Border brrr=(Border.all(
      color: Colors.transparent,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: StrokeAlign.center));
  Border brrrr=(Border.all(
      color: Colors.transparent,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: StrokeAlign.center));
  Border b = (Border.all(
      color: Colors.grey,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: StrokeAlign.center));
  Border br = (Border.all(
      color: Colors.transparent,
      width: 2,
      style: BorderStyle.solid,
      strokeAlign: StrokeAlign.center)
      
  );

  void border(){

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sharedpre();
  }

  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double stbar = MediaQuery.of(context).padding.top;
    double bonav = MediaQuery.of(context).padding.bottom;
    double height = theight - stbar - bonav;
    // double appbar = kToolbarHeight;
    print("====$height =====$width");
    double value;
    value = min(height, width);
    print("''''''''$value''''''''");

    return WillPopScope(
      onWillPop: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Are you sure you want to Exit?",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              actions: [
                TextButton(
                    onPressed: () {
                      exit(0);
                    },
                    child: Text(
                      "YES",
                      style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "NO",
                      style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
                    )),
              ],
            );
          },
        );
        return Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/background.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                //first
                Container(
                  height: height * 0.1181,
                  width: width,
                  //color: Colors.red,
                  margin: EdgeInsets.fromLTRB(0, height * 0.02465, 0, 0),
                  child: Center(
                    child: Text(
                      "Math Puzzles",
                      style: TextStyle(
                          fontSize: value * 0.07777, color: Colors.indigo),
                    ),
                  ),
                ),

                //second
                Container(
                  height: height * 0.7081,
                  width: width * 0.9270,
                  margin: EdgeInsets.fromLTRB(
                      width * 0.03645, 0, width * 0.03645, height * 0.00616),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("image/blackboard_main_menu.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Listener(
                          onPointerUp: (event) {
                            setState(() {
                              brr = br;
                            });
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return sec(a);
                              },
                            ));
                          },
                          onPointerDown: (event) {
                            setState(() {
                              brr = b;
                            });

                          },

                          child: Container(
                            margin: EdgeInsets.fromLTRB(115, 150, 115, 0),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: brr,
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: Text("CONTINUE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: value * 0.04375,
                                      fontFamily: "f1")),
                            ),
                          ),
                        ),
                        Listener(
                          onPointerUp: (event) {
                            setState(() {
                              brrr = br;
                            });
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return fo(a);
                              },
                            ));
                          },
                          onPointerDown: (event) {
                            setState(() {
                              brrr = b;
                            });

                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(115, 0, 115, 0),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: brrr,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text("PUZZlES",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: value * 0.04861,
                                      fontFamily: "f1")),
                            ),
                          ),
                        ),
                        Listener(
                          onPointerUp: (event) {
                            setState(() {
                              brrrr = br;
                            });
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return sec(a);
                              },
                            ));
                          },
                          onPointerDown: (event) {
                            setState(() {
                              brrrr = b;
                            });


                          },
                          child: Container(
                            margin:
                                EdgeInsets.fromLTRB(115, 0, 115, 150),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border:brrrr,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text("BUY PRO",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: value * 0.04861,
                                      fontFamily: "f1")),
                            ),
                          ),
                        ),
                      ]),
                ),

                //third
                Row(
                  children: [
                    Container(
                      height: height * 0.09353,
                      width: width * 0.20666,
                      //color: Colors.red,

                      //margin: EdgeInsets.fromLTRB(0, 0, 100, 5),

                      margin: EdgeInsets.fromLTRB(width * 0.0486,
                          height * 0.02465, width * 0.4132, height * 0.02465),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/ltlicon.png"),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: height * 0.05416,
                                width: width * 0.1034,
                                margin: EdgeInsets.fromLTRB(
                                    width * 0.04861,
                                    height * 0.009863,
                                    width * 0.01215,
                                    height * 0.006164),
                                padding: EdgeInsets.fromLTRB(
                                    width * 0.01458,
                                    height * 0.007397,
                                    width * 0.01458,
                                    height * 0.007397),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Colors.white,
                                    Colors.black12,
                                    Colors.white
                                  ]),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  "image/shareus.png",
                                )
                                //child: Image.asset("image/shareus.png", fit: BoxFit.fill)
                                ),
                            Container(
                                height: height * 0.05416,
                                width: width * 0.1034,
                                margin: EdgeInsets.fromLTRB(
                                    width * 0.01215,
                                    height * 0.009863,
                                    width * 0.04861,
                                    height * 0.006164),
                                padding: EdgeInsets.fromLTRB(
                                    width * 0.01215,
                                    height * 0.006164,
                                    width * 0.01215,
                                    height * 0.006164),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.black12,
                                      Colors.white,
                                      Colors.black12,
                                      Colors.white
                                    ]),
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white70),

                                //child: Image(image: AssetImage("image/shareus.png")),
                                child: Image.asset(
                                  "image/emailus.png",
                                )),
                          ],
                        ),
                        Container(
                          height: height * 0.04060,
                          width: width * 0.2944,

                          margin: EdgeInsets.fromLTRB(
                              width * 0.02430,
                              height * 0.006164,
                              width * 0.01215,
                              height * 0.02465),
                          padding: EdgeInsets.fromLTRB(
                              width * 0.007291,
                              height * 0.003698,
                              width * 0.007291,
                              height * 0.003698),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  strokeAlign: StrokeAlign.center,
                                  width: 2)),
                          //alignment: Alignment.topLeft,
                          child: Center(
                            child: Text("Privacy Policy",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> sharedpre() async {
    print(">>>>>>>>>>>>>>>>>>");
      fi.prefs = await SharedPreferences.getInstance();

    setState(() {
      a = fi.prefs!.getInt("level") ?? 0;
      sec.puzzzel.clear();
      sec.puzzzel.add(fi.prefs!.getString("key0") ?? "sk");
      for (int i = 1; i < 75; i++) {
        sec.puzzzel.add(fi.prefs!.getString("key$i") ?? "p");
      }
      print("+++++++++++++${sec.puzzzel}");
    });
  }
}
