import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mathpuzzle/first.dart';
import 'package:mathpuzzle/third.dart';

class sec extends StatefulWidget {
  int a;

  sec(this.a);

  static List puzzzel = [];

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  String dis = "";
  Border brr=(Border.all(
      color: Colors.transparent,
      width: 2,
      style: BorderStyle.solid,
    ));
  Border br = (Border.all(
      color: Colors.grey,
      width: 2,
      style: BorderStyle.solid,
      ));
  Border brrrr=(Border.all(
      color: Colors.transparent,
      width: 2,
      style: BorderStyle.solid,
    ));



  void getvalue(String s) {
    setState(() {
      dis = dis + s;
    });
  }

  List ans = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    "60",
    "61",
    "62",
    "63",
    "64",
    "65",
    "66",
    "67",
    "68",
    "69",
    "70",
    "71",
    "72",
    "73",
    "74",
    "75"
  ];
  List color=["1", "2", "3", "4", "5", "6", "7", "8", "9", "0" ];
 List colorList=[];
 Color c=Color(0xFF434242);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    colorList= List.filled(color.length, Colors.grey);
    b=List.filled(10, false);
  }
  double height=0;
  double width=0;

  Widget build(BuildContext context) {
    double theight = MediaQuery
        .of(context)
        .size
        .height;
     width = MediaQuery
        .of(context)
        .size
        .width;
    double stbar = MediaQuery
        .of(context)
        .padding
        .top;
    double bonav = MediaQuery
        .of(context)
        .padding
        .bottom;
     height = theight - stbar - bonav;
    // double appbar = kToolbarHeight;
    print("====$height =====$width");
    //int value=1;
    var value = min(height, width);

    return WillPopScope(
      onWillPop: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Are you sure you want to exit? ",
                  style: TextStyle(fontWeight: FontWeight.w600)),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return fi();
                        },
                      ));
                    },
                    child: Text(
                      "YES",
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "NO",
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
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
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("image/gameplaybackground.jpg"),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
              SizedBox(
              height: height * 0.17,
              child: Row(
                  children: [
                  InkWell(
                  onTap: () {
            setState(() {
            fi.prefs!.setString("key${(widget.a)}", "sk");
            widget.a = widget.a + 1;
            fi.prefs!
                .setString("key${(widget.a)}", "sk");

            fi.prefs!.setInt("level", widget.a);
            dis = "";
            });
            },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                    0, height * 0.012, 0, height * 0.012),
                height: height * 0.049,
                width: width * 0.166,
                child: Image(image: AssetImage("image/skip.png")),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  0, height * 0.012, 0, height * 0.012),
              height: height * 0.069,
              width: width * 0.66,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/level_board.png"),
                      fit: BoxFit.fill)),
              child: Center(
                  child: Text("Puzzele ${widget.a + 1}",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "f1",
                        fontSize: value * 0.06076,
                        fontWeight: FontWeight.bold,
                      ))),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Hint\n""Ans is :${ans[widget.a]}",
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                            )),

                      ],
                    );
                  },
                );
              },

              child: Container(decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("image/hint.png"))),
                  margin: EdgeInsets.fromLTRB(
                      0, height * 0.012, 0, height * 0.012),
                  height: height * 0.049,
                  width: width * 0.166,
                  child: Text("${ans[widget.a]}")
              ),
          ),
          ],
        ),
      ),
      Container(
          height: height * 0.66,
          width: width * 0.94,
          padding: EdgeInsets.fromLTRB(0, 0, 0, height * 0.30),
          //padding: EdgeInsets.fromLTRB(height*0.012, height*0.012, height*0.012, 200),
          child: Image.asset(
            "image/p${widget.a+1}.png",
            fit: BoxFit.fill,
          )),
      Container(
          height: height * 0.17,
          width: width * 1,
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height * 0.0455,
                    width: width * 0.6416,
                    margin: EdgeInsets.fromLTRB(
                        0, height * 0.01602, 0, height * 0.01602),
                    padding: EdgeInsets.fromLTRB(
                        width * 0.01215,
                        height * 0.0036,
                        width * 0.01215,
                        height * 0.0036),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "$dis",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (dis.length > 0) {
                          dis = dis.substring(0, dis.length - 1);
                        }
                      });
                    },
                    child: Container(
                      height: height * 0.0677,
                      width: width * 0.08507,
                      margin: EdgeInsets.fromLTRB(
                          width * 0.009722,
                          height * 0.008630,
                          width * 0.0024,
                          height * 0.008630),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("image/delete.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("$dis");
                      print("${ans[widget.a]}");

                      setState(() {
                        if (dis == ans[widget.a]) {
                          fi.prefs!
                              .setString("key${(widget.a)}", "s");
                          widget.a = widget.a + 1;
                          fi.prefs!
                              .setString("key${(widget.a)}", "sk");

                          fi.prefs!.setInt("level", widget.a);
                          dis = "";
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return thh(widget.a);
                                },
                              ));
                          //sec.puzzzel[(widget.a)-1]="s";


                          // sec.puzzzel[(widget.a)-1]="s";
                          // sec.puzzzel.

                        } else {
                          //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Wrong')));
                          Fluttertoast.showToast(
                            msg: "Wrong!!",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Color(0xFF9E7676),
                            textColor: Color(0xFFFFFFFF),
                            fontSize: 17,
                          );
                        }

                        //}
                        //}
                      });
                    },
                    child: Listener(
                      onPointerUp: (event) {
                        setState(() {
                          brr=brrrr;
                        });

                      },
                      onPointerDown: (event) {
                        setState(() {
                          brr=br;
                        });

                      },
                      child: Container(
                        height: height * 0.0677,
                        width: width * 0.2114,
                        margin: EdgeInsets.fromLTRB(
                            width * 0.01215,
                            height * 0.008630,
                            width * 0.01215,
                            height * 0.008630),
                        decoration: BoxDecoration(
                            border:brr,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Center(
                            child: Text("SUBMIT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "f1",
                                    fontSize: 20))),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: List.generate(10, (index) => creatList(index))
              ),
            ],
          )),
      ],
    ),)
    ,
    )
    ,
    )
    ,
    );
  }
  List<bool> b=[];

  Widget creatList(int index) {
    return Listener(
      onPointerDown: (event) {
        setState(() {
          b[index]=true;
        });
      },
      onPointerUp: (event) {
        setState(() {
          b[index]=false;
        });
        getvalue("$index");
      },
      child: Container(
        height: height * 0.06032,
        width: width * 0.08531,
        margin: EdgeInsets.fromLTRB(
            width * 0.007291,
            height * 0.01232,
            width * 0.007291,
            height * 0.006164),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
              color: Colors.grey,
              style: BorderStyle.solid,
              width: 0.7),
          color: b[index]?Colors.grey:Color(0xFF434242),
        ),
        child: Center(
            child: Text("$index",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ))),
      ),
    );
  }
}
