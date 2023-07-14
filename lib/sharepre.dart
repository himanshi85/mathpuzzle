import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shh extends StatefulWidget {
  const shh({Key? key}) : super(key: key);

  @override
  State<shh> createState() => _shhState();
}

class _shhState extends State<shh> {
  int? a;
  SharedPreferences? prefs;
  bool tf=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    prefrecessetget();
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child:tf? Scaffold(
          body: Column(
        children: [
          Container(
            child: Center(child: Text("$a", )),
          ),
          IconButton(onPressed: () {
            setState(() {
              a= a! + 1;
              prefs!.setInt("csfhw", a!);
            });



          }, icon: Icon(Icons.add))
        ],
      )):CircularProgressIndicator()
    );
  }

  Future<void> prefrecessetget() async {

    prefs = await SharedPreferences.getInstance();

     setState(() {
       a =prefs!.getInt("csfhw")??0;
       tf=true;

     });



  }
}
