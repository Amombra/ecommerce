import 'produit.dart';

class Ecommerce {
  int id;
  String nom;
  String image;
  List<Produits> produits;

  Ecommerce({this.id, this.nom, this.image, this.produits});

  Ecommerce.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
    image = json['image'];
    if (json['produits'] != null) {
      produits = new List<Produits>();
      json['produits'].forEach((v) {
        produits.add(new Produits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    data['image'] = this.image;
    if (this.produits != null) {
      data['produits'] = this.produits.map((v) => v.toJson()).toList();
    }
    return data;
  }
}