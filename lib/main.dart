import 'package:flutter/material.dart';
//import 'package:flutter_app/BicycleIncludeDetails.dart';
//import 'package:flutter_app/Login.dart';
//import 'package:flutter_app/BooksSportsHobbies.dart';
//import 'package:flutter_app/Properties.dart';
import 'package:flutter_app/Sell.dart';
//import 'package:flutter_app/Cars.dart';
//import 'package:flutter_app/MoreCategories.dart';
//import 'package:flutter_app/Mobiles.dart';
//import 'package:flutter_app/Bikes.dart';

//import 'package:flutter_app/ElectronicsAppliances.dart';
//import 'package:flutter_app/Furniture.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(0, 48, 52, 1),
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'olx',

      //home: Cars(),
      //home: MoreCategories(),
      // home: Mobiles(),
      home: Sell(),
      //home: BicycleIncludeDetails(),
      //home: ElectronicsAppliances(),
      //home: Furniture(),
      // home: Properties(),
      //home: BooksSportsHobbies(),
      /* Scaffold(
        appBar: AppBar(
          title: Text('olx'),
        ),
        body: Center(
          child: Text('olx'),
        ),
      ),*/
    );
  }
}
