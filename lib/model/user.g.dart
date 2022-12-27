// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['email'] as String?,
      json['address'] as String?,
      json['phone'] as String?,
      json['username'] as String?,
      json['password'] as String?,
      json['country'] as String?,
      json['isAdmin'] as bool?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'address': instance.address,
      'country': instance.country,
      'phone': instance.phone,
      'username': instance.username,
      'password': instance.password,
      'isAdmin': instance.isAdmin,
    };
