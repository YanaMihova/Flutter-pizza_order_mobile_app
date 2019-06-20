import "package:flutter/material.dart";
import 'package:pizza_new_app/screen/home.dart';
import 'package:pizza_new_app/screen/order.dart';
import 'package:pizza_new_app/screen/map.dart';
import 'package:pizza_new_app/screen/scan.dart';
//import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pizza',
        routes: <String,WidgetBuilder>{
          '/Home': (BuildContext context) => Home(),
          '/Order': (BuildContext context) => Order(),
          '/Map': (BuildContext context) => Map(),
          '/Scan': (BuildContext context) => Scan(),
        },
        home: new Home(),
        debugShowCheckedModeBanner:false
    );

  }
}

