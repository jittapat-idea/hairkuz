import 'package:flutter/material.dart';

class FacePage6 extends StatefulWidget {
  @override
  _FacePage6State createState() => _FacePage6State();
}

class _FacePage6State extends State<FacePage6> {
  List<String> imgHair = [
    "images/rectangleFace/F1.jpg",
    "images/rectangleFace/F2.jpg",
    "images/rectangleFace/F3.jpg",
    "images/rectangleFace/F4.jpg",
    "images/rectangleFace/F5.jpg",

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
                  'ใบหน้ารูปสี่เหลี่ยมผืนผ้า',
                  style: TextStyle(
                      fontSize: 22.0, color: Colors.white, fontFamily: "Kanit"),
                )),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'ใบหน้ารูปสี่เหลี่ยมผืนผ้า : คนที่มีใบหน้าแนวนี้จะมีคางที่ยาวกว่าแบบอื่นและสร้างภาพลวงตาทำให้เป็นคนหน้ายาวนั่นเอง ซึ่งควรที่จะปล่อยผมด้านหน้าลงมาปิดหน้าผากเพื่อลดความที่ดูยาวของใบหน้า ซึ่งต้องตัดให้สมดุลให้ผมด้านหน้ายาวเท่ากับผมด้านข้างด้วย',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontFamily: "Kanit"),
                    )),
                Container(
                    height: 1300,
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
                                  width: 25.0,
                                ),
                                Container(
                                    width: 210.0,
                                    height: 160.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[0]),
                                        ))),
                                SizedBox(
                                  width: 35.0,
                                ),
                                Text(
                                  "Side part",
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
                                  width: 45.0,
                                ),
                                Container(
                                    width: 160.0,
                                    height: 210.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[1]),
                                        ))),
                                SizedBox(
                                  width: 70.0,
                                ),
                                Text(
                                  "Bush up",
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
                                  width: 35.0,
                                ),
                                Container(
                                    width: 180.0,
                                    height: 190.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(35.0),
                                        image: DecorationImage(
                                          image: AssetImage(imgHair[2]),
                                        ))),
                                SizedBox(
                                  width: 50.0,
                                ),
                                Text(
                                  "    Short\nspiky hair",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
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
                          width: 280.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                image: AssetImage(imgHair[3]),
                              ))),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                          width: 280.0,
                          height: 160.0,
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