import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class sp extends StatefulWidget {
  const sp({Key? key}) : super(key: key);

  @override
  State<sp> createState() => _spState();
}

Color col=Colors.lightGreen;

class _spState extends State<sp> {
  TextEditingController name = TextEditingController();

  String? a;
  String b="";

  SharedPreferences? prefs;
  bool satus=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sharedpp();
  }
  Widget build(BuildContext context) {


    return SafeArea(
      child:
      satus?
      Scaffold(resizeToAvoidBottomInset: false,
        body: Container(
          height: 811.42,
          width: 411.42,
          color: col,

            child: Column(
          children: [
            Center(
              child: Container(
                height:50,
                  width: 150,
                margin: EdgeInsets.fromLTRB(30, 20, 30, 20),

                color: Colors.white,
                child: TextField(
                  onTap: () {

                     //print("$a");
                  },
                  controller:  name,


                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),

            ),
            InkWell(
              onTap: () {
                setState(() {
                  b=name.text;
                });

             setState(() {
               //a=b;
               prefs!.setString("csfhw", b);
             });

              },
              child: Container(
                margin:EdgeInsets.fromLTRB(50, 100, 50, 50),
                height: 50,
                width: 150,
                color: Colors.teal,
                child: Center(child: Text("set data", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, ))),


              ),
            ),
            Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.fromLTRB(30, 100, 30, 20),

              color: Colors.white,
              child: Center(child: Text("$a", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, ))),


            ),
            InkWell(
              onTap: () {
                setState(() {
                  a =prefs!.getString("csfhw")??"setvalue";
                });

              },
              child: Container(
                height: 50,
                width: 150,
                color: Colors.teal,
                margin:EdgeInsets.fromLTRB(50, 100, 50, 50),
                child: Center(child: Text("Get data", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, ))),


              ),
            )
          ],
        ))
      ):CircularProgressIndicator()
    );
  }

  Future<void> sharedpp() async {
    prefs = await SharedPreferences.getInstance();

    setState(() {
     // a =prefs!.getInt("csfhw")??0;
      satus=true;

    });



  }
}
