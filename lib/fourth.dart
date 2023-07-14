import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mathpuzzle/second.dart';

class fo extends StatefulWidget {
  int a;

  fo(this.a);

  @override
  State<fo> createState() => _foState();
}

class _foState extends State<fo> {
  PageController pg = PageController();
  int index = 0;
  List<bool> b=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    b=List.filled(24, false);
  }
  Widget build(BuildContext context) {
    double theight = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double stbar = MediaQuery.of(context).padding.top;
    double bonav = MediaQuery.of(context).padding.bottom;
    double height = theight - stbar - bonav;
    // double appbar = kToolbarHeight;
    print("====$height =====$width");
    var value1 = min(height, width);

    List l = [
      //first
      Container(
          height: height * 0.7258,
          width: width,
          margin: EdgeInsets.fromLTRB(width * 0.03402, 0, width * 0.03402, 0),
          child: GridView.builder(
            itemCount: 24,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              if (sec.puzzzel[index] == "p") {
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

                  },
                  child: Container(
                   height: height * 0.1086,
                   width: width * 0.2086,
                   margin: EdgeInsets.fromLTRB(width * 0.01215,
                       height * 0.006164, width * 0.01215, height * 0.006164),
                   decoration: BoxDecoration(
                       // border: Border.all(
                       //     color: Colors.black26,
                       //     width: 2,
                       //     style: BorderStyle.solid),
                       // borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(
                           image: AssetImage("image/lock.png"),
                           fit: BoxFit.fill)),

                   // child:
                   // Center(child: Text("${widget.a}",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 45), )),
                    ),
                );
              } else if (sec.puzzzel[index] == "s") {
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        border:b[index]? Border.all(
                            color: Colors.grey,
                            width: 5,
                            style: BorderStyle.solid):Border.all(
                            color: Colors.black26,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("image/tick.png"),
                            fit: BoxFit.fill)),
                    child: Center(
                        child: Text(
                      "${index + 1}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else if (sec.puzzzel[index] == "sk") {
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index);
                      },
                    ));

                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                      border: b[index]?Border.all(
                          color: Colors.grey,
                          width: 5,
                          style: BorderStyle.solid)
                       :Border.all(
                          color: Colors.black26,
                          width: 2,
                          style: BorderStyle.solid),
                      // image: DecorationImage(
                      //     image: AssetImage("image/tick.png"), fit: BoxFit.fill)
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      "${index + 1}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else {
                return Container();
              }
            },
          )),
      //second
      Container(
          height: height * 0.7258,
          width: width,
          margin: EdgeInsets.fromLTRB(width * 0.03402, 0, width * 0.03402, 0),
          child: GridView.builder(
            itemCount: 24,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              if (sec.puzzzel[index + 24] == "p") {
                return InkWell(
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) {
                  //       return sec(index + 24);
                  //     },
                  //   ));
                  // },
                   child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/lock.png"),
                            fit: BoxFit.fill)),
                  ),
                );
              } else if (sec.puzzzel[index + 24] == "s") {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index + 24);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black26,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("image/tick.png"),
                            fit: BoxFit.fill)),
                    child: Center(
                        child: Text(
                      "${index + 25}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else if (sec.puzzzel[index + 24] == "sk") {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index + 24);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black26,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      // image: DecorationImage(
                      //     image: AssetImage("image/tick.png"), fit: BoxFit.fill)
                    ),
                    child: Center(
                        child: Text(
                      "${index + 25}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else {
                return Container();
              }
            },
          )),
      //third
      Container(
          height: height * 0.7258,
          width: width,
          margin: EdgeInsets.fromLTRB(width * 0.03402, 0, width * 0.03402, 0),
          child: GridView.builder(
            itemCount: 24,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              if (sec.puzzzel[index + 48] == "p") {
                return InkWell(
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) {
                  //       return sec(index + 48);
                  //     },
                  //   ));
                  // },
                   child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("image/lock.png"),
                            fit: BoxFit.fill)),
                  ),
                );
              } else if (sec.puzzzel[index + 48] == "s") {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index + 48);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black26,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("image/tick.png"),
                            fit: BoxFit.fill)),
                    child: Center(
                        child: Text(
                      "${index + 49}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45),
                    )),
                  ),
                );
              } else if (sec.puzzzel[index + 48] == "sk") {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index + 48);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black26,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      // image: DecorationImage(
                      //     image: AssetImage("image/tick.png"), fit: BoxFit.fill)
                    ),
                    child: Center(
                        child: Text(
                      "${index + 49}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else {
                return Container();
              }
            },
          )),
      //fourth
      Container(
          height: height * 0.7258,
          width: width,
          margin: EdgeInsets.fromLTRB(width * 0.03402, 0, width * 0.03402, 0),
          child: GridView.builder(
            itemCount: 3,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context, index) {
              if (sec.puzzzel[index + 72] == "p") {
                return InkWell(
                  // onTap: () {
                  //   Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) {
                  //       return sec(index + 72);
                  //     },
                  //   ));
                  // },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //     color: Colors.black26,
                        //     width: 2,
                        //     style: BorderStyle.solid),
                        // borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("image/lock.png"),
                            fit: BoxFit.fill)),

                    // child:
                    // Center(child: Text("${widget.a}",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 45), )),
                  ),
                );
              } else if (sec.puzzzel[index + 72] == "s") {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index + 72);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black26,
                            width: 2,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("image/tick.png"),
                            fit: BoxFit.fill)),
                    child: Center(
                        child: Text(
                      "${index + 73}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else if (sec.puzzzel[index + 72] == "p") {
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return sec(index + 72);
                      },
                    ));
                  },
                  child: Container(
                    height: height * 0.1086,
                    width: width * 0.2086,
                    margin: EdgeInsets.fromLTRB(width * 0.01215,
                        height * 0.006164, width * 0.01215, height * 0.006164),
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black26,
                          width: 2,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10),
                      // image: DecorationImage(
                      //     image: AssetImage("image/tick.png"), fit: BoxFit.fill)
                    ),
                    child: Center(
                        child: Text(
                      "${index + 73}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          fontFamily: "f2"),
                    )),
                  ),
                );
              } else {
                return Container();
              }
            },
          )),
    ];

    return SafeArea(
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
                Container(
                  height: height * 0.06795,
                  width: width,
                  margin: EdgeInsets.fromLTRB(
                      0, height * 0.01232, 0, height * 0.006164),
                  child: Center(
                    child: Text("Select Puzzle",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontFamily: "f1",
                            fontWeight: FontWeight.bold,
                            fontSize: value1 * 0.07291)),
                  ),
                ),
                l[index],
                Container(
                  height: height * 0.09385,
                  width: width,
                ),
                Row(
                  children: [
                    InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            if (index > 0) {
                              index--;
                            }
                          });
                        },
                        child: Container(
                          height: height * 0.06919,
                          width: width * 0.25693,
                          margin: EdgeInsets.fromLTRB(
                              0, 0, width * 0.2430, height * 0.02465),
                          decoration: index > 0
                              ? BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("image/back.png")))
                              : null,
                        )),
                    InkWell(
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        setState(() {
                          if (index < 3) {
                            index++;
                          }
                          //print(("$index"));
                        });
                      },
                      child: Container(
                          height: height * 0.06919,
                          width: width * 0.25693,
                          margin: EdgeInsets.fromLTRB(
                              width * 0.2430, 0, 0, height * 0.02465),
                          decoration: index < 3
                              ? BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("image/next.png")))
                              : null),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
