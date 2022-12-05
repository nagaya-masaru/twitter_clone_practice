import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default('') String userName,
    @Default('') String imageUrl,
    @Default('') String birthday,
    @Default(0) int gender,
    @Default(0) int followers,
    @Default(0) int follows,
    @Default('') String createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
