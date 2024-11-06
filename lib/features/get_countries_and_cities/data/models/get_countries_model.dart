class GetCountriesModel {
  final int id;
  final String code;
  final String createdAt;
  final String updatedAt;

  GetCountriesModel({
    required this.id,
    required this.code,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GetCountriesModel.fromJson(Map<String, dynamic> json) {
    return GetCountriesModel(
      id: json['id'],
      code: json['code'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
