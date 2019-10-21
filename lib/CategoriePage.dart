// import 'package:flutter/material.dart';
// import 'ProduitPage.dart';
// import 'ecommerce_service.dart';
// import 'ecommerce.dart';

// class CategoriePage extends StatefulWidget {
//   @override
//   _CategoriePageState createState() => _CategoriePageState();
// }

// class _CategoriePageState extends State<CategoriePage> {
//   // List<_CategoriePageState> cat = [];
//   // Future getCat() async {
//   //   List<_CategoriePageState> res = await CategoriePage().getCat();
//   //   if(res != null)
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Category Brand', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
//         centerTitle: false,
//         elevation: 0,
//         backgroundColor: Colors.white,
//         actions: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: Icon(Icons.search, color: Colors.black54,),
//           )
//         ],
//       ),
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: ListView.builder(
//             itemCount: produits.length,
//             itemBuilder: (buildContext, index) => GestureDetector(
//               onTap: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context) =>ProduitPage()));
//               },
//               child: Container(
//                 height: 120,
//                 width: double.infinity,
//                 margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
//                 alignment: Alignment.center,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     image: DecorationImage(
//                         image: AssetImage("assets/${produits[index].image}"),
//                         fit: BoxFit.cover
//                     )
//                 ),
//                 child: Text( produits[index].image, style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),),
//                 //produits[index].nom
//               ),
//             )
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             IconButton(icon: Icon(Icons.home,color: Colors.grey,), onPressed: (){}),
//             IconButton(icon: Icon(Icons.branding_watermark,color: Colors.blue), onPressed: (){}),
//             IconButton(icon: Icon(Icons.shopping_cart,color: Colors.grey), onPressed: (){}),
//             IconButton(icon: Icon(Icons.account_box,color: Colors.grey), onPressed: (){})
//           ],
//         ),
//       ),
//     );
//   }
// }
