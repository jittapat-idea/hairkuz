import 'package:flutter/material.dart';

class ColorPage extends StatefulWidget{
   
  @override
  State<StatefulWidget> createState() {
    return _ColorPageState();
  }
}

class _ColorPageState extends State<ColorPage>{
  List<String> tool = [
     "images/mainmenu/fuc4.png"
     ];
  List<String> img =[
    "images/colormenu/01.jpg"
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: <Widget>[
          
      Container(
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
              onPressed: (){ Navigator.pushNamed(context,'/HomePage' );},
            ),
          ]
          )
          ),
            SizedBox(height:25.0),
          Column(
           children: <Widget> [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
             Container(
               width: 100.0,
               height: 100.0,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(image: AssetImage(tool[0]))
               )),
             
             Container(
               height:80,
               width: 290,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.red[400],
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(0.0),
                     bottomRight: Radius.circular(16.0),
                     topLeft: Radius.circular(0.0),
                     topRight: Radius.circular(16.0)
                     )),
                   child: toolStyle("ทำสีผม"),
               ),
               ), 
           ]
           ),
           SizedBox(
             height:40
           ),
           Container(
             height: 1400,
             width: 380,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30.0)
             ),
             child: Column(
               
               children: [
                 Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Text('เลือกสีผมให้เข้ากับตัวเอง',
                 style: TextStyle(
                   fontFamily:  "Kanit",
                   fontSize: 16.0,
                   fontWeight: FontWeight.normal,
                   color: Colors.black),),

                 SizedBox(
                   height: 30,
                 ),
                     Text('โทนสีนํ้าตาล เช่น สีนํ้าตาล,สีนํ้าตาลซ็อกโกเเลต\nเเละสีนํ้าตาลมะฮอกกานี โทนสีนี้\nเหมาะสำหรับหนุ่มๆทุกสีผิว ยิ่งถ้าคุณเป็น\nหนุ่มผิวเข้ม การย้อมผมโทนสีนํ้าตาลจะช่วย\nทำให้ใบหน้าสว่างเเละดูอ่อนวัยมากขึ้น',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                      SizedBox(
                        height: 30,
                      ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/colormenu/01.jpg',width:180,height: 180,),
                        
                        Image.asset('images/colormenu/02.jpg',width: 180,height: 180,),
                      ] ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0)
                    ),
                  Center(
                    child: Image.asset('images/colormenu/03.jpg',width: 180,height: 180,)
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('โทนสีอ่อน เช่น สีประกายทอง, สีบลอนด์ สีเทา \nสีเหล่านี้จะช่วยสร้างมิติ และลูกเล่นต่างๆ ให้กับ\nเส้นผมได้หลากหลายแบบ ทั้งยังเสริมบุคลิคดู\nทันสมัย นอกจากนี้ยังสามารถแซมเฉดสีน้ำเงิน\nเป็นไฮไลท์หรือทำแบบ dip ปลายกับโทนสีเทา\nหรือสีบอนด์ได้อีกด้วย',
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/colormenu/04.jpg',width:180,height: 180,),
                        
                        Image.asset('images/colormenu/05.jpg',width: 180,height: 180,),
                        Padding(padding: EdgeInsets.only( left: 15)),
                      ] ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 50, 10, 0)
                    ),
                  Container(
               height:80,
               width: 290,
               child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/RecommendPage'
                            
                          );
                        },
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
               ),
              Padding(
                padding: EdgeInsets.all(20.0)
                ),

                Container(
               height:80,
               width: 290,
               child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,'/TakecarePage'
                            
                          );
                        },
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.red[400],
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(16.0),
                     bottomRight: Radius.circular(16.0),
                     topLeft: Radius.circular(16.0),
                     topRight: Radius.circular(16.0)
                     )),
                   child: toolStyle("ดูเเลผมหลังย้อมสี"),
                )),
               ), 
                        
                        
                          
                          
                        
                       
                       
                     

                
                  

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
      ],)
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
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white),
        )
      ],),
    );
}

