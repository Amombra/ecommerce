// import 'package:flutter/material.dart';
// import 'categories.dart';
// import 'package:hello/models/categorie.dart';
// import 'package:hello/ecommerce_service.dart';



// class Affichage extends StatefulWidget {
//   @override
//   _AffichageState createState() => _AffichageState();
// }

// class _AffichageState extends State<Affichage> {
//     Future<List<Ecommerce>> categorieData;

//     TextEditingController editingController = TextEditingController();
//     var element = List<Ecommerce>();
//     @override
//   void initState() {
    
//     super.initState();
//   }


//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: CategoriesService.getAll(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           List<Ecommerce> prod = snapshot.data;


//             return Scaffold(
//       appBar: AppBar(
//         title: Text("Recherche"),
//       ),
//       backgroundColor: Colors.grey,
//       body: Column(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Container(
//                   margin: EdgeInsets.only(top:50),
//                   alignment: Alignment.center,
//                   height: 60,
//                   width: 320,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(100)
//                   ),
//                   child:Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: TextField(
//                       decoration: InputDecoration(icon: Icon(Icons.vpn_key,size: 25,),hintText: "search ...",labelStyle: TextStyle(fontSize: 20),
//                           border: InputBorder.none
//                       ),
//                     ),
//                   ) ,
                  
//                 ),
//               // ListView.builder(
//               //   itemCount: prod.length,
//               //   itemBuilder: (buildContext, i){
//               //     return Card(
//               //       elevation: 8,
//               //       child: Container(
//               //         height: 50,
//               //         width:130,
//               //         child: Text(prod[i].produits[i].nom),
//               //       ),
//               //     );
//               //   },
//               //   )
              
//             ],
//           ),
//         ],
//       ),
//     );
         
//         }
//       }
//     );
    
//   }
// }