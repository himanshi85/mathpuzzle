import 'package:flutter/material.dart';

class dee extends StatefulWidget {
  const dee({Key? key}) : super(key: key);

  @override
  State<dee> createState() => _deeState();
}

class _deeState extends State<dee> {

  @override
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double stbar = MediaQuery.of(context).padding.top;
    double bonav = MediaQuery.of(context).padding.bottom;
    double height = theight  - stbar-bonav;
    print("====$height =====$width");
    double value;


     value= height< width ?height:width;
    return SafeArea(
      child: Scaffold(


        body:
        Center(
          child: Container(
            height:  value*0.72992,
            width:value*0.72992,

            decoration: BoxDecoration(color: Colors.red, ),

          ),
        ),
      ),
    );
  }
}
