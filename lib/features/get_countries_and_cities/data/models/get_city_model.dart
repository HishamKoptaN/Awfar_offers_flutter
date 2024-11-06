class GetCityModel {
  final int id;
  final String name;
  final int countryId;
  final String createdAt;
  final String updatedAt;

  GetCityModel({
    required this.id,
    required this.name,
    required this.countryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GetCityModel.fromJson(Map<String, dynamic> json) {
    return GetCityModel(
      id: json['id'],
      name: json['name'],
      countryId: json['country_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
