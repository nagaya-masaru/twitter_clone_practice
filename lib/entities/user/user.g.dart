// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_UserModel',
      json,
      ($checkedConvert) {
        final val = _$_UserModel(
          userName: $checkedConvert('user_name', (v) => v as String? ?? ''),
          imageUrl: $checkedConvert('image_url', (v) => v as String? ?? ''),
          birthday: $checkedConvert('birthday', (v) => v as String? ?? ''),
          gender: $checkedConvert('gender', (v) => v as int? ?? 0),
          followers: $checkedConvert('followers', (v) => v as int? ?? 0),
          follows: $checkedConvert('follows', (v) => v as int? ?? 0),
          createdAt: $checkedConvert('created_at', (v) => v as String? ?? ''),
        );
        return val;
      },
      fieldKeyMap: const {
        'userName': 'user_name',
        'imageUrl': 'image_url',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'user_name': instance.userName,
      'image_url': instance.imageUrl,
      'birthday': instance.birthday,
      'gender': instance.gender,
      'followers': instance.followers,
      'follows': instance.follows,
      'created_at': instance.createdAt,
    };
