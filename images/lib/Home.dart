

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
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
              colors:[Colors.redAccent,Colors.purple[300]])),
          child:Center(
          child:ListView( shrinkWrap: true,children: [ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/mainmenu/hair.png',height: 300,width: 350,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0)) ,
              Center(child: Text('เลือกโครงหน้าทีเป็นคุณ',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,fontFamily:'Kanit'),)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30)) ,
              SizedBox(
                width: 200,
                height: 50,
                child:RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                    onPressed: (){ Navigator.pushNamed(context,'/FacePage' );},
                child: Text('เริ่ม',style: TextStyle(fontSize: 24.0,color: Colors.white,fontWeight: FontWeight.bold,fontFamily:'Kanit'),),color: Colors.black, )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50)) ,
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [ 
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   IconButton(icon: Image.asset('images/mainmenu/fuc1.png'),iconSize: 100, 
                   onPressed: (){Navigator.pushNamed(context, '/ToolPage' );}),
                   Text('อุปกรณ์ตัดผม',style: TextStyle(fontSize:18.0,color: Colors.white,fontFamily:'Kanit' ),),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 0, 0, 20)) ,
                   IconButton(icon: Image.asset('images/mainmenu/fuc3.png'),iconSize: 100,
                    onPressed: (){Navigator.pushNamed(context, '/ShopPage' );}),
                   Text('ร้านตัดผม',style: TextStyle(fontSize:18.0,color: Colors.white, fontFamily:'Kanit'),),
                   Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50)) 
                 ],
                  ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   IconButton(icon: Image.asset('images/mainmenu/fuc2.png'),iconSize: 100, 

                   onPressed: (){
                     Navigator.pushNamed(
                       context, '/HairtoolPage' );}),
                       
                   Text('ผลิตภัณฑ์แต่งทรงผม',style: TextStyle(fontSize:18.0,color: Colors.white, fontFamily:'Kanit'),),
                   Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20)) ,
                   IconButton(icon: Image.asset('images/mainmenu/fuc4.png'),iconSize: 100, 
                   onPressed: (){Navigator.pushNamed(context, '/ColorPage' );}),
                   Text('ทำสีผม',style: TextStyle(fontSize:18.0,color: Colors.white, fontFamily:'Kanit' ),),
                   Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 50)) 
                   ],
                  )
                 ],  
               ),
              ],
          ),
          ],)
          )
        ),
      );
  }
}