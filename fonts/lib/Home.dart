import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffFD4A4A), Color(0xffAD63D3)])),
          child: Center(
              child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/mainmenu/hair.png',
                    height: 270,
                    width: 320,
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                  Center(
                      child: Text(
                    'เลือกโครงหน้าทีเป็นคุณ',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit',
                        color: Colors.white),
                  )),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
                  SizedBox(
                      width: 180,
                      height: 65,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.black)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/FacePage');
                        },
                        child: Text(
                          'เริ่ม',
                          style: TextStyle(
                              fontSize: 24.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit'),
                        ),
                        color: Colors.black,
                      )),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 50)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: Image.asset('images/mainmenu/fuc1.png'),
                              iconSize: 100,
                              onPressed: () {
                                Navigator.pushNamed(context, '/ToolPage');
                              }),
                          Text(
                            'อุปกรณ์ตัดผม',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Kanit'),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 30)),
                          IconButton(
                              icon: Image.asset('images/mainmenu/fuc2.png'),
                              iconSize: 100,
                              onPressed: () {Navigator.pushNamed(context, '/ShopPage');}),
                          Text(
                            'ร้านตัดผม',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Kanit'),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50))
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              icon: Image.asset('images/mainmenu/fuc3.png'),
                              iconSize: 100,
                              onPressed: () {
                                Navigator.pushNamed(context, '/HairtoolPage');
                              }),
                          Text(
                            'ผลิตภัณฑ์\nแต่งทรงผม',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Kanit'),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 4)),
                          IconButton(
                              icon: Image.asset('images/mainmenu/fuc4.png'),
                              iconSize: 100,
                              onPressed: () {
                                Navigator.pushNamed(context, '/ColorPage');
                              }),
                          Text(
                            'ทำสีผม',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Kanit'),
                          ),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50))
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                      width: 200,
                      height: 80,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/HairStylePage');
                        },
                        child: Text(
                          'ทรงผมมาแรง',
                          style: TextStyle(
                              fontSize: 24.0,
                              color: Color(0xffF9C700),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Kanit'),
                        ),
                        color: Colors.black,
                      )),
                  Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 20)),
                ],
              ),
            ],
          ))),
    );
  }
}