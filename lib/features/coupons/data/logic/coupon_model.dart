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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'store_id': storeId,
      'url': url,
      'description': description,
      'is_work': isWork,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

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

  // تحويل الكوبون إلى Map ليتم تخزينه في SharedPreferences
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'store_id': storeId,
      'url': url,
      'description': description,
      'is_work': isWork,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }

  // تحويل Map إلى كوبون
  factory CouponModel.fromMap(Map<String, dynamic> map) {
    return CouponModel(
      id: map['id'],
      code: map['code'],
      storeId: map['store_id'],
      url: map['url'],
      description: map['description'],
      isWork: map['is_work'],
      createdAt: map['created_at'],
      updatedAt: map['updated_at'],
    );
  }
}
