import 'package:cloud_firestore/cloud_firestore.dart';


class DateFirebase{
  final CollectionReference shoplist = 
     Firestore.instance.collection('Shop');

Future<void> createShoplist(
  String name, String pic, GeoPoint maps, String uid) async{
    return await shoplist.document(uid).setData({
      'Name':name,
      'Picshop':pic,
      'Location':maps

    });
  }

  Future getShoplist() async{
    List itemsList = [];

    try{
      await shoplist.getDocuments().then((querySnapshot) {
        querySnapshot.documents.forEach((element) {
          itemsList.add(element.data);
         });
      });
      return itemsList;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}

