import 'package:flutter/material.dart';

class Chonstate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(35),
            child: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 85, 0, 10),
                    child: Container(
                      height: 120,
                      width: 120,
                      //color: Colors.white,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 85, 0, 10),
                    child: Container(
                        height: 80,
                        width: 200,
                        //color: Colors.white,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: Colors.red),
                        child: Center(
                          child: Text(
                            'ทำสีผม',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  height: 1000,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                      color: Colors.white),
                  child: Column(children: <Widget>[
                    Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 110, 920),
                    child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'เลือกสีผมให้เข้ากับตัวเอง',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )),
                    ),
                  ),
                  ],)
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
