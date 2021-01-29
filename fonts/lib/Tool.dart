
import 'package:flutter/material.dart';

class ToolPage extends StatefulWidget{
   
  @override
  State<StatefulWidget> createState() {
    return _ToolPageState();
  }
}

class _ToolPageState extends State<ToolPage>{
  List<String> tool = [
     "images/mainmenu/fuc1.png"

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
               width: 280,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.red[400],
                   borderRadius: BorderRadius.only(
                     bottomLeft: Radius.circular(0.0),
                     bottomRight: Radius.circular(16.0),
                     topLeft: Radius.circular(0.0),
                     topRight: Radius.circular(16.0)
                     )),
                   child: toolStyle("อุปกรณ์ตัดผม"),
               ),
               ), 
           ]
           ),
           SizedBox(
             height:40
           ),
           Container(
             height: 1600,
             width: 380,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30.0)
             ),
             child: Column(
               children: [
                 Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('images/toolmenu/tol1.jpg',height: 100,width: 100,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('ปัตตาเลี่ยน : ตัดผมได้ทั้งศีรษะ\nขึ้นทรงได้ตามการตัดของช่าง',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                  Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(width: 10,),
                     Text('ปัตตาเลี่ยนกันขอบ : เก็บขอบงาน\nขึ้นเส้นหลังจากตัดทรงเรียบร้อย',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Image.asset('images/toolmenu/tol2.jpg',height: 100,width: 100,),
                   ],),

                  Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('images/toolmenu/tol3.jpg',height: 100,width: 100,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('ฟันรอง : ใส่หน้าปัตตาเลี่ยน\nเพื่อให้ได้ความยาวผมที่เท่ากัน\nมีตั้งเเต่เบอร์ 0.5 - 8',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                  Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(width: 10,),
                     Text('หวีใหญ่ : ขึ้นทรงผม\n                เก็บรอยต่อผม\nหวีเล็ก : ขึ้นรองทรงเท้า\n               เก็บขอบไรผม',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Image.asset('images/toolmenu/tol4.jpg',height: 100,width: 100,),
                   ],),

                  Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('images/toolmenu/tol5.png',height: 100,width: 100,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('กรรไกรตัด : ตัดเส้นผมให้\nสั้นลง ตัดขึ้นกรอบผมด้านบน\nกรรไกรฟันปลา : ซอยผมให้\nบางลง เล็บปลายผม',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(width: 10,),
                     Text('นํ้าฉีดผม : ทำให้เห็นความยาวผม\nด้านบนได้ชัดเจนเเละตัดได้ง่ายขึ้น',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Image.asset('images/toolmenu/tol6.png',height: 100,width: 100,),
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('images/toolmenu/tol8.jpg',height: 100,width: 100,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('แปรงปัด : ใช้ปัดเศษผมในขณะตัด\nเพื่อให้ตัดได้ง่ายขึ้นเเละปัดหลัง\nจากตัดเสร็จเพื่อความเรียบร้อย',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],),

                  Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(width: 10,),
                     Text('มีดโกน : เก็บความเรียบร้อย\nขั้นสุดท้ายรอบศีรษะเเละเครา',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Image.asset('images/toolmenu/tol7.jpg',height: 100,width: 100,),
                   ],),

                   Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('images/toolmenu/tol9.jpg',height: 100,width: 100,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('ที่หนีบผม : เก็บผมส่วน\nที่ตกลงมาปกด้านข้าง',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       SizedBox(width: 10,)
                   ],), 

                   Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(width: 10,),
                     Text('ผ้าคลุมตัดผม : คลุมเศษผม\nไม่ให้ติดเสื่อผ้าเวลาตัด',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),
                       Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Image.asset('images/toolmenu/tol10.jpg',height: 100,width: 100,),
                   ],),

                  Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Image.asset('images/toolmenu/tol11.png',height: 100,width: 100,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('เก้าอี้ตัดผม : เก้าอี้ที่เหมาะสมกับการ\nตัดผมทั้งความสูงเเละการปรับท่า',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
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


 