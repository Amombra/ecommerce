import 'package:hello/models/categorie.dart';
import 'package:hello/ecommerce_service.dart';
import 'package:flutter/material.dart';
import 'package:hello/ProduitPage.dart';
//import 'chart.dart';

class CategoriePage extends StatefulWidget {
  @override
  _CategoriePageState createState() => _CategoriePageState();
}

class _CategoriePageState extends State<CategoriePage> {

  List<Ecommerce> cat = [];

  @override
  void initState() {
    getCategorie();
    super.initState();
  }


  Future getCategorie() async{
    List<Ecommerce> res = await loadchargerJson();
    if (res != null){
      setState(() {
        cat = res;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search, color: Colors.black54,),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: cat.length,
            itemBuilder: (buildContext, i) => Container(
              height: 120,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: AssetImage(cat[i].image),
                      fit: BoxFit.cover
                  )
              ),
               child: InkWell(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ProduitPage(cat[i])));
                 },
                 child: Text(cat[i].nom, style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold),),
               )
            )
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home,color: Colors.grey,), onPressed: (){}),
            IconButton(icon: Icon(Icons.branding_watermark,color: Colors.blue), onPressed: (){}),
            IconButton(icon: Icon(Icons.shopping_cart,color: Colors.grey), onPressed: (){}),
            IconButton(icon: Icon(Icons.account_box,color: Colors.grey), onPressed: (){})
          ],
        ),
      ),
    );
  }
}

