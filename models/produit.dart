import 'commande.dart';
class Produits {
  int id;
  String nom;
  int prix;
  String image;
  String description;
  List<Commande> commande;

  Produits(
      {this.id,
      this.nom,
      this.prix,
      this.image,
      this.description,
      this.commande});

  Produits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
    prix = json['prix'];
    image = json['image'];
    description = json['description'];
    if (json['commande'] != null) {
      commande = new List<Commande>();
      json['commande'].forEach((v) {
        commande.add(new Commande.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    data['prix'] = this.prix;
    data['image'] = this.image;
    data['description'] = this.description;
    if (this.commande != null) {
      data['commande'] = this.commande.map((v) => v.toJson()).toList();
    }
    return data;
  }
}