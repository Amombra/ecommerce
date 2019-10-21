import 'dart:async';
import 'dart:convert';
import 'dart:core' ;
import 'package:hello/models/categorie.dart';

import 'package:flutter/services.dart' show rootBundle;

//import 'ecommerce.dart';



// Future chargerJson() async{
//   return await rootBundle.loadString("assets/ecommerce.json");
// }
// class CategoriesService{
//   static Future<List<Ecommerce>> getAll () async{
//     String reponse = await chargerJson();
//     List<Ecommerce> com =List();
//     List data = json.decode(reponse);
//     data.forEach((f)=> com.add(Ecommerce.fromJson(f)));
//     return com;
//   }
// }


Future<String> chargerJson() async{
  return await rootBundle.loadString("assets/ecommerce.json");

}

Future loadchargerJson() async {
  final charge = await chargerJson();
  Iterable response = json.decode(charge);
  List<Ecommerce> arr = response.map((i) =>Ecommerce.fromJson(i)).toList();

  return arr;
}
