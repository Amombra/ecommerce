import 'package:flutter/material.dart';
import 'tp.dart';
import 'deuxieme.dart';
import 'input.dart';
//import 'ui4.dart';
//import 'chart.dart';
import 'HomePage.dart';
import 'cat.dart';
import 'meubles.dart';

void main()=>runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Meubles(),
      debugShowCheckedModeBanner: false,
    );
  }
   }
