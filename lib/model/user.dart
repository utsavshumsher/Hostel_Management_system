
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? email;
  String? address;
  String? fullname;
  String? phone;
  String? profile;
  String? password;

  User(this.email, this.address, this.phone, this.profile, this.password,
      this.fullname);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

