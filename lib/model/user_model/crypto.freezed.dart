// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Crypto _$CryptoFromJson(Map<String, dynamic> json) {
  return _Crypto.fromJson(json);
}

/// @nodoc
mixin _$Crypto {
  String? get coin => throw _privateConstructorUsedError;
  String? get wallet => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoCopyWith<Crypto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCopyWith<$Res> {
  factory $CryptoCopyWith(Crypto value, $Res Function(Crypto) then) =
      _$CryptoCopyWithImpl<$Res, Crypto>;
  @useResult
  $Res call({String? coin, String? wallet, String? network});
}

/// @nodoc
class _$CryptoCopyWithImpl<$Res, $Val extends Crypto>
    implements $CryptoCopyWith<$Res> {
  _$CryptoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = freezed,
    Object? wallet = freezed,
    Object? network = freezed,
  }) {
    return _then(_value.copyWith(
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoImplCopyWith<$Res> implements $CryptoCopyWith<$Res> {
  factory _$$CryptoImplCopyWith(
          _$CryptoImpl value, $Res Function(_$CryptoImpl) then) =
      __$$CryptoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? coin, String? wallet, String? network});
}

/// @nodoc
class __$$CryptoImplCopyWithImpl<$Res>
    extends _$CryptoCopyWithImpl<$Res, _$CryptoImpl>
    implements _$$CryptoImplCopyWith<$Res> {
  __$$CryptoImplCopyWithImpl(
      _$CryptoImpl _value, $Res Function(_$CryptoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coin = freezed,
    Object? wallet = freezed,
    Object? network = freezed,
  }) {
    return _then(_$CryptoImpl(
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoImpl implements _Crypto {
  _$CryptoImpl({this.coin, this.wallet, this.network});

  factory _$CryptoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoImplFromJson(json);

  @override
  final String? coin;
  @override
  final String? wallet;
  @override
  final String? network;

  @override
  String toString() {
    return 'Crypto(coin: $coin, wallet: $wallet, network: $network)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoImpl &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, coin, wallet, network);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoImplCopyWith<_$CryptoImpl> get copyWith =>
      __$$CryptoImplCopyWithImpl<_$CryptoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoImplToJson(
      this,
    );
  }
}

abstract class _Crypto implements Crypto {
  factory _Crypto(
      {final String? coin,
      final String? wallet,
      final String? network}) = _$CryptoImpl;

  factory _Crypto.fromJson(Map<String, dynamic> json) = _$CryptoImpl.fromJson;

  @override
  String? get coin;
  @override
  String? get wallet;
  @override
  String? get network;
  @override
  @JsonKey(ignore: true)
  _$$CryptoImplCopyWith<_$CryptoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
