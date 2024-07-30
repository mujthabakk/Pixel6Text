// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Hair _$HairFromJson(Map<String, dynamic> json) {
  return _Hair.fromJson(json);
}

/// @nodoc
mixin _$Hair {
  String? get color => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HairCopyWith<Hair> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HairCopyWith<$Res> {
  factory $HairCopyWith(Hair value, $Res Function(Hair) then) =
      _$HairCopyWithImpl<$Res, Hair>;
  @useResult
  $Res call({String? color, String? type});
}

/// @nodoc
class _$HairCopyWithImpl<$Res, $Val extends Hair>
    implements $HairCopyWith<$Res> {
  _$HairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HairImplCopyWith<$Res> implements $HairCopyWith<$Res> {
  factory _$$HairImplCopyWith(
          _$HairImpl value, $Res Function(_$HairImpl) then) =
      __$$HairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? color, String? type});
}

/// @nodoc
class __$$HairImplCopyWithImpl<$Res>
    extends _$HairCopyWithImpl<$Res, _$HairImpl>
    implements _$$HairImplCopyWith<$Res> {
  __$$HairImplCopyWithImpl(_$HairImpl _value, $Res Function(_$HairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? type = freezed,
  }) {
    return _then(_$HairImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HairImpl implements _Hair {
  _$HairImpl({this.color, this.type});

  factory _$HairImpl.fromJson(Map<String, dynamic> json) =>
      _$$HairImplFromJson(json);

  @override
  final String? color;
  @override
  final String? type;

  @override
  String toString() {
    return 'Hair(color: $color, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HairImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HairImplCopyWith<_$HairImpl> get copyWith =>
      __$$HairImplCopyWithImpl<_$HairImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HairImplToJson(
      this,
    );
  }
}

abstract class _Hair implements Hair {
  factory _Hair({final String? color, final String? type}) = _$HairImpl;

  factory _Hair.fromJson(Map<String, dynamic> json) = _$HairImpl.fromJson;

  @override
  String? get color;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$HairImplCopyWith<_$HairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
