// import 'package:flutter/material.dart';
// import 'package:hello/models/categorie.dart';
// import 'package:hello/models/produit.dart';



// class Mp extends StatefulWidget {

//   @override
//   _MpState createState() => new _MpState();
// }

// class _MpState extends State<Mp> {
  
//   TextEditingController editingController = TextEditingController();
//   Future<List<Ecommerce>> categoriess;

//  List<Ecommerce> categories;

//   List<Produits> proD = [];
//     final List<Produits> meselements = [];


//   @override
//   void initState() {
//     charge();
//     proD.addAll(widget.categories.produits);
//     meselements.addAll(widget.categories.produits);
//     super.initState();
//   }

//   Future charge(){

//   }

//   void filtre(String query) {
//     meselements.clear();

    
//     if(query.isNotEmpty) {
//       proD.forEach((produit) {
//         if(produit.description.toLowerCase().contains(query.toLowerCase())) {
//           meselements.add(produit);
//         }
//       });
     
//     } else {
//       meselements.addAll(proD);
//     }
//     setState(() {
      
//     });

//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("widget title"),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 onChanged: (produit) {
//                   filtre(produit);
//                 },
//                 controller: editingController,
//                 decoration: InputDecoration(
//                     labelText: "Search",
//                     hintText: "Search",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(25.0)))),
//               ),
//             ),
//             // Expanded(
//             //   child: ListView.builder(
//             //     shrinkWrap: true,
//             //     itemCount: items.length,
//             //     itemBuilder: (context, index) {
//             //       return ListTile(
//             //         title: Text('${items[index]}'),
//             //       );
//             //     },
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
