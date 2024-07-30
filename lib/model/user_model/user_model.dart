import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    List<User>? users,
    int? total,
    int? skip,
    int? limit,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
