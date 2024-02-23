// ignore_for_file: non_constant_identifier_names

class ModelsModel {
  final String id;
  final int created;
  final String object;
  final String owned_by;

  ModelsModel({
    required this.id,
    required this.object,
    required this.created,
    required this.owned_by,
  });

  factory ModelsModel.fromJson(Map<String, dynamic> json) => ModelsModel(
        id: json["id"],
        object: json["object"],
        created: json["created"],
        owned_by: json["owned_by"],
      );

  static List<ModelsModel> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => ModelsModel.fromJson(data)).toList();
  }
}
