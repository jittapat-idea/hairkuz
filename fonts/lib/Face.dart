import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class FacePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FacePageState();
  }
}

class _FacePageState extends State<FacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: (Text(
          '    โครงหน้าของคุณ',
          style: TextStyle(
              fontFamily: 'Kanit', fontSize: 26.0, color: Colors.white),
        )),
        backgroundColorStart: Colors.purple,
        backgroundColorEnd: Colors.redAccent,
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple[700],Colors.black]
           ),),
     child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 1.0),
                  child: Container(
                      padding: EdgeInsets.all(20.0),
                      height: 150,
                      width: 350,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage1'
                            
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16)),
                          child: faceStyle("images/facemenu/face1.png", "กลม")
                        ))),
                 ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(20.0),
                    height: 150,
                    width: 350,
                    child: GestureDetector(
                       onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage2'
                            
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(16)),
                          child: faceStyle("images/facemenu/face2.png", "รูปไข่"),
                        )),
                         ), 
                  SizedBox(
                    height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 150,
                      width: 350,
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage3'
                            
                          );
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color: Colors.grey,
                            borderRadius:BorderRadius.circular(16)),
                        child: faceStyle("images/facemenu/face3.png", "รูปเพชร"),
                        ),) ,
                         ),
                        SizedBox(
                    height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 150,
                      width: 350,
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage4'
                            
                          );
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color: Colors.grey,
                            borderRadius:BorderRadius.circular(16)),
                        child: faceStyle("images/facemenu/face4.png", "รูปสามเหลื่ยม"),
                        ),),
                          ),
                         SizedBox(
                    height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 150,
                      width: 350,
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage5'
                            
                          );
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color: Colors.grey,
                            borderRadius:BorderRadius.circular(16)),
                        child: faceStyle("images/facemenu/face5.png", "รูปสี่เหลื่ยม"),
                        ),),
                           ),
                         SizedBox(
                    height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 150,
                      width: 350,
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage6'
                            
                          );
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color: Colors.grey,
                            borderRadius:BorderRadius.circular(16)),
                        child: faceStyle("images/facemenu/face6.png", "รูปสี่เหลี่ยมผืนผ้า"),
                        ),),
                           ),
                        SizedBox(
                    height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 150,
                      width: 350,
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/FacePage7'
                            
                          );
                        },
                        child: Container(
                          decoration:BoxDecoration(
                            color: Colors.grey,
                            borderRadius:BorderRadius.circular(16)),
                        child: faceStyle("images/facemenu/face7.png", "รูปหัวใจ"),
                        ),
                        ),
                           ),
                        Padding(
                          padding:const EdgeInsets.fromLTRB(0, 0, 0, 50) ,) 
              ],
            ),
          ],
        ),
      )
    );
  }
}

Widget faceStyle(String img, String face) {
  return Padding(
      padding: EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          Expanded(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                    width: 80.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(img)))),
                SizedBox(width: 5.0),

                Text(
                  face,
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[700],
                  ),
                ),
                
                              ],
            ),
          ),
        ]),
      );
}
