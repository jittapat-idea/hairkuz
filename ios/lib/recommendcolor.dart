import 'package:flutter/material.dart';

class RecommendPage extends StatefulWidget{
   
  @override
  State<StatefulWidget> createState() {
    return _RecommendPageState();
  }
}

class _RecommendPageState extends State<RecommendPage>{
  List<String> tool = [
     "images/colormenu/recommend/rec01.jpg",
     "images/colormenu/recommend/rec02.jpg",
     "images/colormenu/recommend/rec03.jpg",
     "images/colormenu/recommend/rec04.jpg",
     "images/colormenu/recommend/rec05.jpg",
     "images/colormenu/recommend/rec06.jpg",
     ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[Colors.blue,Colors.purple] )),
      child: ListView(
        children:<Widget> [
          Padding(
            padding: EdgeInsets.only(top: 10.0,left:10.0),
          child:Row(children:<Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_sharp),
              color: Colors.white,
              onPressed: (){ Navigator.pushNamed(context,'/ColorPage' );},
            ),
          ]
          )
          ),
            
          Column(
           children: <Widget> [
            
           SizedBox(
             height:40
           ),
           Container(
             height: 1300,
             width: 380,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30.0)
             ),
             child: Column(
               children: [
                 Padding(padding: EdgeInsets.all(20)),
                 Container(
               height:80,
               width: 290,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.red[400],
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(16.0),
                     bottomRight: Radius.circular(16.0),
                     topLeft: Radius.circular(16.0),
                     topRight: Radius.circular(16.0)
                     )),
                   child: toolStyle("สีผมเเนะนำ"),
               )),
              
                 Padding(padding:EdgeInsets.fromLTRB(20, 30, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(image: AssetImage(tool[0]))
                        )),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('สีนํ้าตาลเเดง',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 20.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                 Padding(padding:EdgeInsets.fromLTRB(20, 30, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(image: AssetImage(tool[1]))
                        )),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('สีบลอนด์ขี้เถ้า',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 20.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 30, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(image: AssetImage(tool[2]))
                        )),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('สีบลอนด์',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 20.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 30, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(image: AssetImage(tool[3]))
                        )),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('สีนํ้าตาลอ่อน',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 20.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 30, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(image: AssetImage(tool[4]))
                        )),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('สีนํ้าตาลขนกวาง',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 20.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 30, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       image: DecorationImage(image: AssetImage(tool[5]))
                        )),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('สีม่วงเทา',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 20.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

               ],
             ),
           ),
           SizedBox(
             height: 40,
           )
           ]),
            ],
      ), 
      ),
    );
  }
}
Widget toolStyle(String tool){
  return Padding(
    padding:EdgeInsets.all(16.0),
    child: Column(
      children: [
        Text(tool,
        style: TextStyle(
          fontFamily: 'Kanit',
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white),
        )
      ],),
    );
}

