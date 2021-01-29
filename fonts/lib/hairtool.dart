import 'package:flutter/material.dart';

class HairtoolPage extends StatefulWidget{
   
  @override
  State<StatefulWidget> createState() {
    return _HairtoolPageState();
  }
}

class _HairtoolPageState extends State<HairtoolPage>{
  List<String> tool = [
     "images/mainmenu/fuc2.png"

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
                   child: toolStyle("ผลิตภัณฑ์จัดเเต่งทรงผม"),
               ),
               ), 
           ]
           ),
           SizedBox(
             height:40
           ),
           Container(
             height: 2200,
             width: 380,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(30.0)
             ),
             child: Column(
               
               children: [
                 Padding(padding:EdgeInsets.fromLTRB(20, 40, 0, 0)),
                 Text('ชนิดของผลิตภัณฑ์จัดเเต่งทรงผม',
                 style: TextStyle(
                   fontFamily:  "Kanit",
                   fontSize: 16.0,
                   fontWeight: FontWeight.normal,
                   color: Colors.black),),

                 SizedBox(
                   height: 30,
                 ),
                     Image.asset('images/Hairtoolmenu/pro1.jpg',height: 150,width: 150,),
                     Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                     Text('เเป้ง [Powder]\nสำหรับการเซ็ตผมโดยใช้แป้งเป็นนวัตกรรมที่\nเกิดขึ้นมาใหม่ เเละมีผลิตภัณฑ์ที่ทำออกมาน้อย\nเหมาะสำหรับการเซ็ตผมสั้น ผมมัน ผมเซ็ตยาก\nเพราะเเป้งจะชาวยให้ผมฟูขึ้นได้มาก\nใครต้องการให้ผมดูมีนํ้าหนักเเละมีวอลลุ่ม\nสามารถใช้เเป้งได้ เเต่ข้อเสียตือ หาฟต้องการให้\nผมอยู่ทรงนานต้องฉีดสเปรย์ทับอีที',
                     style: TextStyle(
                       fontFamily: "Kanit",
                       fontSize: 16.0,
                       fontWeight: FontWeight.normal,
                       color: Colors.black),),

                 SizedBox(
                   height: 30
                    ),
                    Image.asset('images/Hairtoolmenu/pro2.jpg',height: 150,width: 150,),
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                    Text('โพเมด [Pomade]\nโพเมดเป็นผลิตภัณฑ์ที่นิยมใช้เซ็ตทรงผม\nวินเทจแบบต่าง ๆ เช่น Undercut SidePart\nเนื่องจากทรงผมเหล่านี้ต้องการผลิตภัณฑ์ที่มี\nความเหนียวเป็นพิเศษ เพื่อให้ทรงผมเซ็ต\nแล้วอยู่ตัว เนื้อของโพเมดจะมีความยืดหยุ่น\nซึ่งช่วยให้จัดแต่งทรงผมได้อยู่ทรงนาน\nรวมถึงสามารถจัดแต่งทรงผมได้ซ้ำในระหว่างวัน\nโดยไม่ก่อให้เกิดคราบขุย',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),

                  SizedBox(
                   height: 30
                    ),
                    Image.asset('images/Hairtoolmenu/pro3.jpg',height: 150,width: 150,),
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                    Text('เจลใส่ผม [Hair Gel]\nสามารถใช้เซ็ตทรงผมได้หลากหลายแบบ\nคุณสมบัติของเจลนั้นเหมาะสำหรับทรงผมที่มี\nความยาวไม่มาก เพราะเจลจะช่วยทำให้เส้นผม\nเรียบ ไม่ชี้ฟู และดูเงา แต่เนื่องด้วยเจลมีการแข็ง\nตัวค่อนข้างเร็ว เราจะไม่สามารถจัดแต่งทรงผม\nได้ซ้ำในระหว่างวัน อีกทั้งมักจะแตกตัวเป็นขุย ๆ\nทำให้เกิดคราบขาว ๆ อีกด้วย',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),

                  SizedBox(
                   height: 30
                    ),
                    Image.asset('images/Hairtoolmenu/pro4.jpg',height: 150,width: 150,),
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                    Text('แว็กซ์ [Hair Wax]\nสามารถใช้งานได้หลายประเภท มีหลากหลาย\nสูตรให้เลือกใช้ ตั้งแต่สูตรเบาบางไปจนถึงสูตร\nแข็งมาก ซึ่งแว็กซ์เป็นผลิตภัณฑ์จัดแต่งทรงผม\nที่เหมาะสำหรับเซ็ตผมที่มีความยาวพอประมาณ \nและแว็กซ์มีความแตกต่างจากเจลก็คือสามารถ\nใช้จัดแต่งทรงผมเพิ่มเติมได้ในระหว่างวัน โดยไม่\nจับตัวกันและแห้งเป็นขุยเหมือนกับเจล',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),

                  SizedBox(
                   height: 30
                    ),
                    Image.asset('images/Hairtoolmenu/pro5.png',height: 150,width: 150,),
                    Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                    Text('สเปรย์ [Hair Spray]\nผลิตภัณฑ์จัดแต่งผมแบบสเปรย์เป็นผลิตภัณฑ์\nที่ใช้งานได้ง่ายสะดวกมาก ๆ เหมาะสำหรับผมสั้น\nถึงผมยาวเลยทีเดียว แต่การฉีดสเปรย์บางตัวทำ\nให้ผมแข็งมาก อีกทั้งยังล้างออกยาก ดังนั้นควร\nเลือกระดับความแข็งให้ดี',
                    style: TextStyle(
                      fontFamily: "Kanit",
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),),
                  
                  SizedBox(
                    height: 30
                  ),
                  Text('สุดท้ายแล้วขึ้นอยู่กับความชอบแบะความมั่นใจ\nของแต่ละบุคคลที่ต้องการอยากให้ผมออกมา\nเป็นแบบไหน',
                  style:TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black
                  ))
                  

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
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white),
        )
      ],),
    );
}


 