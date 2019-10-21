import 'package:hello/models/categorie.dart';
import 'package:hello/models/produit.dart';
import 'package:hello/ProduitPage.dart';

import 'package:flutter/material.dart';

import 'chart.dart';



class ProduitPage extends StatefulWidget {

  static const routeName = '/produit';

  final Ecommerce categorie;

  ProduitPage(this.categorie);

  @override
  _ProduitPageState createState() => _ProduitPageState();
}

class _ProduitPageState extends State<ProduitPage> {

  TextEditingController editingController = TextEditingController();


  List<Produits> liste = [];

  final List<Produits> modifItems = [];

  @override
  void initState() {
    charge();
    liste.addAll(widget.categorie.produits);
    modifItems.addAll(widget.categorie.produits);
    super.initState();
  }

  Future charge() async {
  }

  void filter(String query) {
    modifItems.clear();
    if( query.isNotEmpty) {
      liste.forEach((produit) {
        if(produit.nom.toLowerCase().contains(query.toLowerCase())) {
          modifItems.add(produit);
      }
      });

    } else {
      modifItems.addAll(liste);
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
              widget.categorie.nom,
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () => Navigator.pop(context))
        ),

        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
               Card(
                 elevation: 15,
                 child:  Container(
                   alignment: Alignment.center,
                   height: 60,
                   width: 320,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10)
                   ),
                   child:Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: TextField(
                       decoration: InputDecoration(icon: Icon(Icons.search,size: 25,),hintText: "Recherche",labelStyle: TextStyle(fontSize: 20),
                           border: InputBorder.none
                       ),
                       onChanged: (produit) {
                         filter(produit);
                       },
                       controller: editingController,
                     ),
                   ) ,
                 ),
               ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        elevation: 3,
                        child: Container(
                          height: 50,
                          //width: MediaQuery.of(context).size.width/2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down),
                              Text('sort'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 3,
                        child: Container(
                          height: 50,
                          //width: MediaQuery.of(context).size.width/2.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_drop_down),
                              Text('Refine'),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        childAspectRatio: 2/3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: modifItems.length,
                      itemBuilder: (context, i) {
                        //Produit produit = liste[i];
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Chart(modifItems[i])));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: <Widget>[
                                Image.asset(
                                  modifItems[i].image,
                                  fit: BoxFit.contain,
                                  height: 150,
                                  width: double.infinity,

                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text('${modifItems[i].nom}', style:TextStyle(color: Colors.grey)),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text("\$ ${modifItems[i].prix}", style:TextStyle(color: Colors.black)),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text('4.5',style:TextStyle(color: Colors.grey)),
                                            Icon(Icons.star, color:Colors.yellow),
                                            Spacer(),
                                            Text("${modifItems[i].commande.length} Sale",style:TextStyle(color: Colors.grey)),
                                            SizedBox(width: 6,),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                          ),
                        );
                      },
                    ),
                )
              ],
            ),
          ),
        );
  }
}
