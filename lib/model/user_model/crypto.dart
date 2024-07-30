import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto.freezed.dart';
part 'crypto.g.dart';

@freezed
class Crypto with _$Crypto {
  factory Crypto({
    String? coin,
    String? wallet,
    String? network,
  }) = _Crypto;

  factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);
}
