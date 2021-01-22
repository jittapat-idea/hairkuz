
// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:image_test/Chon.dart';
import 'package:image_test/Face.dart';
import 'package:image_test/Home.dart';
import 'package:image_test/Tool.dart';
import 'package:image_test/Hairtool.dart';
import 'package:image_test/triangleFace.dart';
import 'package:image_test/circleFace.dart';
import 'package:image_test/eggFace.dart';
import 'package:image_test/diamondFace.dart';
import 'package:image_test/squareFace.dart';
import 'package:image_test/recatangleFace.dart';
import 'package:image_test/heartFace.dart';
import 'package:image_test/color.dart';
import 'package:image_test/recommendcolor.dart';
import 'package:image_test/takecare.dart';
import 'package:image_test/shop.dart';

void main() { 
  
  
  runApp(MyApp());
  }

class Testpage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Chonstate(),
    );
  }
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes:{'/FacePage':(context) => FacePage(),
       '/ToolPage':(context) => ToolPage(),
       '/HomePage':(context) => HomePage(),
       '/HairtoolPage':(context) => HairtoolPage(),
       '/FacePage4':(context) => FacePage4(),
       '/FacePage1':(context) => FacePage1(),
       '/FacePage2':(context) => FacePage2(),
       '/FacePage3':(context) => FacePage3(),
       '/FacePage5':(context) => FacePage5(),
       '/FacePage6':(context) => FacePage6(),
       '/FacePage7':(context) => FacePage7(),
       '/ColorPage':(context) => ColorPage(),
       '/RecommendPage':(context) => RecommendPage(),
       '/TakecarePage':(context) => TakecarePage(),
       '/ShopPage':(context) => ShopPage(),
      } 
      
    );
  }
}