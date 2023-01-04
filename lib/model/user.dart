import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? email;
  String? address;
  String? country;
  String? phone;
  String? username;
  String? password;
  bool? isAdmin = false;

  User(this.email, this.address, this.phone, this.username, this.password,
      this.country, this.isAdmin);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
