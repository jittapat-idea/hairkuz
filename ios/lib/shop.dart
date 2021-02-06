

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShopPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopPageState();
  }
  
}

class _ShopPageState extends State<ShopPage> {
  List<String> tool = ["images/mainmenu/fuc3.png"];

  double lat;
  double long;

 /* List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    markers.add(Marker(
        markerId: MarkerId('myMarker'),
        draggable: false,
        position: LatLng(lat, long)));
  }*/

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
                  vertical: 60,
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
                    height: 80,
                    width: 290,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(16.0))),
                      child: toolStyle("ร้านตัดผม"),
                    ),
                  ),
                ])),
            Container(
              height: 510,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(20, 20, 0, 0)),
                  Text(
                    'ร้านตัดผมเเนะนำ',
                    style: TextStyle(
                        fontFamily: "Kanit",
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StreamBuilder(
                      stream: Firestore.instance.collection('Shop').snapshots(),
                      builder: (context, snapshot) {
                        return Container(
                            width: 300,
                            height: 430,
                            
                            
                              
                            child:ListView.builder(
                                
                                itemCount: snapshot.data.documents.length,
                                itemBuilder: (context, index) {
                                  DocumentSnapshot shop =
                                      snapshot.data.documents[index];
                                  return 
                                   
                                     
                                        Column(
                                          children: [
                                            Text(
                                          shop['Name'],
                                          style: TextStyle(
                                              fontFamily: "Kanit",
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Image.network(shop['Picshop']),
                                        SizedBox(
                                          height:15
                                        ),

                                        
                                        

                                        showMap(lat = shop['lat'],long = shop['long'],),
                                        
                                        SizedBox(
                                          height:40

                                        )
                                        

                                        ],);
                                        
                                       
                                    
                                  
                                }));
                      })
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ])
        ])
      ],
    ));
  }
}


Container showMap(double lat, double long){
  
  
  LatLng latLng =  LatLng(lat,long);
  CameraPosition cameraPosition = CameraPosition(
    target: latLng,
    zoom: 16.0,
    );

    return Container(
      height: 200,
      width: 300,
      child: GoogleMap(initialCameraPosition: cameraPosition,
      mapType: MapType.normal,
      //markers:Set.from(markers) ,
      onMapCreated: (controller){},
      ),

    );
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
