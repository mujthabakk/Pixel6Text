import 'package:freezed_annotation/freezed_annotation.dart';

part 'hair.freezed.dart';
part 'hair.g.dart';

@freezed
class Hair with _$Hair {
  factory Hair({
    String? color,
    String? type,
  }) = _Hair;

  factory Hair.fromJson(Map<String, dynamic> json) => _$HairFromJson(json);
}
