class MashinaModel {
  final String nom;
  final String model;
  final int massa;
  final String raqam;

  MashinaModel({this.nom, this.model, this.massa, this.raqam});

  factory MashinaModel.test(Map<String, dynamic> map) {
    return MashinaModel(
      nom: map["nom"],
      raqam: map["raqam"],
      massa: map["massa"],
      model: map["model"],
    );
  }
}
