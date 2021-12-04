class FighterModel {
  int? id;
  String? nombre;
  String? alias;
  String? categoria;

  FighterModel({
    this.id,
    this.nombre,
    this.alias,
    this.categoria,
  });

  factory FighterModel.fromJson(Map<String, dynamic> json) => FighterModel(
        id: json["id"],
        nombre: json["nombre"],
        alias: json["alias"],
        categoria: json["categoria"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "alias": alias,
        "categoria": categoria,
      };
}
