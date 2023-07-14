import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double stbar = MediaQuery.of(context).padding.top;
    double bonav = MediaQuery.of(context).padding.bottom;
    double height = theight - stbar - bonav;
    // double appbar = kToolbarHeight;
    print("====$theight =====$width");

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: height * .1,
                width: width * .2,
                  color: Colors.greenAccent.shade100,
                  child: Icon(Icons.ac_unit_rounded,size: 34 * (height * .001)),
                ),
              Container(
                height: height * .1,
                width: width * .6,
                color: Colors.blue.shade200,

              ),
              Container(
                height: height * .1,
                width: width * .2,
                color: Colors.greenAccent.shade100,
                child: Icon(Icons.ac_unit_rounded),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
