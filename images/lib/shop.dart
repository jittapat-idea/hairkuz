import 'package:flutter/material.dart';
import 'DataFireBase.dart';


class ShopPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShopPageState();
  }
}

class _ShopPageState extends State<ShopPage> {
  List<String> tool = ["images/mainmenu/fuc3.png"];

  List shop = [];

  @override
  void initState() {
    super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = await DateFirebase().getShoplist();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        shop = resultant;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.blue, Colors.purple])),
        child: ListView.builder(
            itemCount: shop.length,
            itemBuilder: (context, index) {
              return Stack(children: <Widget>[
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
                  Padding(padding: EdgeInsets.symmetric(vertical: 70,),
                    child:Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image:
                                DecorationImage(image: AssetImage(tool[0])))),
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
                    height: 2200,
                    width: 380,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(20, 40, 0, 0)),
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

                        Text(shop[index]['Name'],style: TextStyle(
                          fontFamily: "Kanit",
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(shop[index]['Picshop'],height: 150,width: 200,),
                        
                        
                      

                        








                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ])
              ]);
            }),
      ),
    );
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
