import 'package:flutter/material.dart';

class TakecarePage extends StatefulWidget{
   
  @override
  State<StatefulWidget> createState() {
    return _TakecarePageState();
  }
}

class _TakecarePageState extends State<TakecarePage>{
  
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
             height: 1000,
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
                   child: toolStyle("ดูเเลผมหลังย้อมสี"),
               )),
              
                  SizedBox(
                   height: 30
                    ),
                    textred("1.เว้นระยะการทำสีเเละสระผม"),
                    
                    Text('เพราะการสระผมหลังจากทำสีผมมาหมาดๆ จะเป็น\nตัวการสำคัญในการทำให้สีผมหลุดออกได้',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),
                  
                  SizedBox(
                   height: 30
                    ),
                    textred("2.หลีกเลี่ยงการใช้นํ้าร้อนสรธผม"),
                    
                    Text('หากใช้น้ำร้อนสระผม เส้นผมที่เพิ่งทำสีมาก็จะเปิด\nและทำให้สีหลุดออกง่าย ทำให้สีผมติดทนได้ไม่นาน\nเท่าที่ต้องการ',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),

                  SizedBox(
                   height: 30
                    ),
                    textred("3.ไม่สระผมบ่อยเกินไป"),
                    
                    Text('การสระผมบ่อยเกินไป เป็นตัวการทำให้ความชุ่มชื้น\nในเส้นผมลดลง ซึ่งถือเป็นปัจจัยสำคัญ ที่ทำให้สี\nผมไม่ติดทน',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),


                  SizedBox(
                   height: 30
                    ),
                    textred("4.ใช้สเปรย์หรือครีมป้องกันความร้อนก่อนไดร์ผม"),
                    
                    Text('ในทุกครั้งที่คุณไดร์ผม ควรชโลมเส้นผมด้วยครีม\nหรือสเปรย์ป้องกันความร้อน เพื่อไม่ให้ผมแห้งเสีย',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),

                      SizedBox(
                   height: 30
                    ),
                    textred("5.บำรุงด้วยลีฟออน"),
                    
                    Text('ลีฟออน หรือผลิตภัณฑ์บำรุงสุขภาพผม เพื่อเสริม\nสร้างความแข็งแรงให้กับเส้นผม ทำให้สีผมคงสภาพ\nติดทนนาน ลดปัญหาแห้งเสียหรือชี้ฟูของเส้นผม\nทำให้ผมมีวอลุ่มสวยงาม จัดทรงง่าย',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),

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
Widget textred(String red){
  return Padding(
    padding:EdgeInsets.all(16.0),
    child: Column(
      children: [
        Text(red,
        style: TextStyle(
          fontFamily: 'Kanit',
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: Colors.red),
        )
      ],),
    );
}
