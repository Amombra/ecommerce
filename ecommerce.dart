class Ecommerce {
  int id;
  String nom;
  List<Produits> produits;

  Ecommerce({this.id, this.nom, this.produits});

  Ecommerce.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
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
    if (this.produits != null) {
      data['produits'] = this.produits.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

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

class Commande {
  int id;
  int quantite;
  String date;
  bool status;
  Utilisateur utilisateur;

  Commande({this.id, this.quantite, this.date, this.status, this.utilisateur});

  Commande.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantite = json['quantite'];
    date = json['date'];
    status = json['status'];
    utilisateur = json['utilisateur'] != null
        ? new Utilisateur.fromJson(json['utilisateur'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['quantite'] = this.quantite;
    data['date'] = this.date;
    data['status'] = this.status;
    if (this.utilisateur != null) {
      data['utilisateur'] = this.utilisateur.toJson();
    }
    return data;
  }
}

class Utilisateur {
  int id;
  String nom;

  Utilisateur({this.id, this.nom});

  Utilisateur.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    return data;
  }
}
