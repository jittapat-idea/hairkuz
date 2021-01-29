import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HairStylePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HairStylePageState();
  }
}

class _HairStylePageState extends State<HairStylePage> {
  List<String> tool = ["images/hot hair/hot1.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.purple]))),
        Stack(children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10.0),
              child: Row(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_sharp),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/HomePage');
                  },
                ),
              ])),
          SizedBox(height: 25.0),
          Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 70,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(image: AssetImage(tool[0])))),
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
                         child: toolStyle("ทรงผมมาเเรง"),
                        ),
                  ),
                ])),
            Container(
              height: 460,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Column(
                children: [
                  StreamBuilder(
                      stream: Firestore.instance
                          .collection('hairstyle')
                          .snapshots(),
                      builder: (context, snapshot) {
                        return Container(
                            width: 300,
                            height: 400,
                            child: ListView.builder(
                                
                                itemCount: snapshot.data.documents.length,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot hair =
                                      snapshot.data.documents[index];
                                  return 
                                  Column(
                                    children: [
                                      Image.network(hair['pichair']),
                                      ]
                                  );
                                }));
                      })
                ],
              ),
            ),
          ])
        ])
      ],
    ));
  }
}
Widget toolStyle(String tool) {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        Text(
          tool,
          style: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        )
      ],
    ),
  );
}
//Widget getmap(GeoPoint latlng){
// return
//}