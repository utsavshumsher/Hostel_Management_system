// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['email'] as String?,
      json['address'] as String?,
      json['phone'] as String?,
      json['profile'] as String?,
      json['password'] as String?,
      json['fullname'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'address': instance.address,
      'fullname': instance.fullname,
      'phone': instance.phone,
      'profile': instance.profile,
      'password': instance.password,
    };
