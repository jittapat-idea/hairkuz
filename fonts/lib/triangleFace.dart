import 'package:flutter/material.dart';

class FacePage4 extends StatefulWidget {
  @override
  _FacePage4State createState() => _FacePage4State();
}

class _FacePage4State extends State<FacePage4> {
  List<String> imgHair = [
    "images/triangleFace/D1.jpg",
    "images/triangleFace/D2.jpg",
    "images/triangleFace/D3.jpg",
    "images/triangleFace/D4.jpg",
    "images/triangleFace/D5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      height: 25.0,
    );
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Color(0xffB061CC)])),
            child: ListView(children: <Widget>[
              Column(children:<Widget> [
                Padding(padding: EdgeInsets.all(10.0)),
                Row(children:<Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_sharp),
              color: Colors.white,
              onPressed: (){ Navigator.pushNamed(context,'/HomePage' );},
            ),
          ]
          ),
                Center(
                    child: Text(
                  'ใบหน้ารูปสามเหลี่ยม',
                  style: TextStyle(fontSize: 22.0, color: Colors.white,fontFamily: "Kanit"),
                )),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'ใบหน้ารูปสามเหลี่ยม : จะมีช่วงหน้าผากที่แคบแต่ขากรรไกรที่กว้าง ควรที่จะเลือกทรงผมที่มีวอลลุ่มเพิ่มความกว้างให้กับหน้าผากและควรหลีกเลี่ยงการตัดผมที่ด้านข้างสั้นๆ',
                      style: TextStyle(fontSize: 18.0, color: Colors.white,fontFamily: "Kanit"),
                    )),
                Container(
                    height: 1180,
                    width: 420,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        child: Text(
                          "ทรงผมที่เหมาะกับใบหน้า",
                          style: TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 45.0,
                                ),
                                Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[0]),
                                        ))),
                                SizedBox(
                                  width: 60.0,
                                ),
                                Text(
                                  "Crew cut",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 50.0,
                                ),
                                Container(
                                    width: 160.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[1]),
                                        ))),
                                SizedBox(
                                  width: 50.0,
                                ),
                                Text(
                                  "Comb over",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 50.0,
                                ),
                                Container(
                                    width: 160.0,
                                    height: 210.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[2]),
                                        ))),
                                SizedBox(
                                  width: 40.0,
                                ),
                                Text(
                                  "Textured\n    quiff",
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 18.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      sizedBox,
                      Container(
                          width: 240.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage(imgHair[3]),
                              ))),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          width: 240.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              image: DecorationImage(
                                image: AssetImage(imgHair[4]),
                              ))),
                    ]),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                      ),
                    )),
              ]),
            ])));
  }
}