import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mathpuzzle/first.dart';
import 'package:mathpuzzle/second.dart';

class thh extends StatefulWidget {
  int a;
  thh(this.a);

  @override
  State<thh> createState() => _thhState();
}

class _thhState extends State<thh> {
  @override
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double stbar = MediaQuery.of(context).padding.top;
    double bonav = MediaQuery.of(context).padding.bottom;
    double height = theight - stbar - bonav;
    print("====$height =====$width");
    double value;
    value = min(height, width);
    print("''''''''$value''''''''");

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("image/background.jpg"), fit: BoxFit.fill)),
          child: Column(
            children: [

              Container(
                height:height*0.1058,
                width:width,

                child:
                Center(
                  child: Text("PUZZLE ${(widget.a)} COMPLETED",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontFamily: "f1",
                        fontSize: value*0.05590,
                      )),
                ),
              ),
              Container(
                height: height*0.3571,
                width: width,

                decoration: BoxDecoration(
                    image:
                    DecorationImage(image: AssetImage("image/trophy.png"))),
              ),

              InkWell(
                onTap: () {
                  setState(() {
                    //widget.a=  widget.a + 1;
                    //fi.prefs!.setInt("level", widget.a);
                  });
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return sec(widget.a);
                  },)
                  );

                },
                child: Container(
                  height: height*0.07512,
                  width: width*0.4166,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.7),
                      gradient: LinearGradient(colors: [Colors.black54, Colors.white, Colors.black54, Colors.black54])

                  ),
                  margin: EdgeInsets.fromLTRB(0, height*0.006164, 0,  height*0.006164),
                  child: Center(child: Text("CONTINUE", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold, fontFamily: "f1", color:Colors.black))),
                ),
              ),
              InkWell(onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                  return fi();
                },));
              },
                child: Container(
                  height: height*0.07512,
                  width:  width*0.4166,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.7),
                      gradient: LinearGradient(colors: [Colors.black54,  Colors.black54,Colors.white, Colors.black54])

                  ),
                  margin: EdgeInsets.fromLTRB(0,  height*0.006164, 0,  height*0.006164),

                  child: Center(child: Text("MAIN MENU", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold, fontFamily: "f1", color:Colors.black))),
                ),
              ),
              Container(
                height: height*0.07512,
                width:  width*0.4166,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.7),
                    gradient: LinearGradient(colors: [Colors.black54,Colors.white,Colors.black54, Colors.black54, Colors.black54])

                ),
                margin: EdgeInsets.fromLTRB(0,  height*0.006164, 0,  height*0.006164),
                //padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Center(child: Text("BUY PRO", style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold, fontFamily: "f1", color:Colors.black))),
              ),










              Container(
                height: height*0.07759,
                width: width,


                child:
                Center(child: Text("SHARE THIS PUZZLE", style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold, fontFamily: "f1", fontSize:value*0.04861, ))),

              ),



              Container(
                  height:height*0.06279,
                  width:width*0.1249,
                  margin: EdgeInsets.fromLTRB(width*0.4375, 0,width*0.4375, 0),
                  padding: EdgeInsets.fromLTRB(width*0.02430, height*0.01232, width*0.02430,  height*0.01232),

                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.white,
                        Colors.black12,
                        Colors.white
                      ]),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 2, )
                  ),

                  child: Image.asset(
                    "image/shareus.png",
                  )
                //child: Image.asset("image/shareus.png", fit: BoxFit.fill)
              ),
              Container(
                height:height*0.1342,
                width: width,
              )
            ],
          ),
        ),
          ),
    );
  }
}
