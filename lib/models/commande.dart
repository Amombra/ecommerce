import 'utilisateur.dart';

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