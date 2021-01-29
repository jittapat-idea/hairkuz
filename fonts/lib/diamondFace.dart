import 'package:flutter/material.dart';

class FacePage3 extends StatefulWidget {
  @override
  _FacePage3State createState() => _FacePage3State();
}

class _FacePage3State extends State<FacePage3> {
  List<String> imgHair = [
    "images/diamondFace/C1.jpg",
    "images/diamondFace/C2.jpg",
    "images/diamondFace/C3.jpg",
    "images/diamondFace/C4.jpg",
    "images/diamondFace/C5.jpg",
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
              Column(children: [
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
                  'ใบหน้ารูปเพชร',
                  style: TextStyle(fontSize: 22.0, color: Colors.white,fontFamily: "Kanit"),
                )),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'ใบหน้ารูปเพชร: จะมีคางที่แคบแต่มีหน้าผากที่กว้างและมีโหนกแก้มที่ชัดเจน โดยโครงหน้าแบบนี้เหมาะกับผมที่ยาวกว่าโครงหน้าอื่นๆ และควรหลีกเลี่ยงการตัดทรงผมที่ด้านข้างสั้น',
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
                                  width: 40.0,
                                ),
                                Container(
                                    width: 160.0,
                                    height: 200.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[0]),
                                        ))),
                                SizedBox(
                                  width: 80.0,
                                ),
                                Text(
                                  "Crop",
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
                                  width: 40.0,
                                ),
                                Container(
                                    width: 170.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[1]),
                                        ))),
                                SizedBox(
                                  width: 60.0,
                                ),
                                Text(
                                  "Slick back",
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
                                  width: 40.0,
                                ),
                                Container(
                                    width: 170.0,
                                    height: 170.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[2]),
                                        ))),
                                SizedBox(
                                  width: 70.0,
                                ),
                                Text(
                                  "High fade",
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
                          width: 200.0,
                          height: 120.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
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