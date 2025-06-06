import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_singleton.freezed.dart';
part 'user_singleton.g.dart';

class UserSingleton {
  User? _user;
  static final UserSingleton _instance = UserSingleton._internal();
  UserSingleton._internal();
  static UserSingleton get instance => _instance;
  User? get user => _user;
  set user(User? user) {
    _user = user;
  }

  void clearUser() {
    _user = null;
  }
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") @Default(0) int id,
    @JsonKey(name: "account_number") @Default("") String accountNumber,
    @JsonKey(name: "online_offline") @Default("") String onlineOffline,
    @JsonKey(name: "first_name") @Default("") String firstName,
    @JsonKey(name: "last_name") @Default("") String lastName,
    @JsonKey(name: "email") @Default("") String email,
    @JsonKey(name: "image") @Default("") String image,
    @JsonKey(name: "address") @Default("") String address,
    @JsonKey(name: "phone") @Default("") String phone,
    @JsonKey(name: "upgraded_at") @Default("") String upgradedAt,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
