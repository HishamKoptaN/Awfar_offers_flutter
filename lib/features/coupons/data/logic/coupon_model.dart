class CouponModel {
  final int id;
  final String code;
  final int storeId;
  final String url;
  final String description;
  final int isWork;
  final String createdAt;
  final String updatedAt;

  CouponModel({
    required this.id,
    required this.code,
    required this.storeId,
    required this.url,
    required this.description,
    required this.isWork,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CouponModel.fromJson(Map<String, dynamic> json) {
    return CouponModel(
      id: json['id'],
      code: json['code'],
      storeId: json['store_id'],
      url: json['url'],
      description: json['description'],
      isWork: json['is_work'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
