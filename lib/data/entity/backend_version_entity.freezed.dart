// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backend_version_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackendVersionEntity _$BackendVersionEntityFromJson(Map<String, dynamic> json) {
  return _BackendVersionEntity.fromJson(json);
}

/// @nodoc
mixin _$BackendVersionEntity {
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackendVersionEntityCopyWith<BackendVersionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackendVersionEntityCopyWith<$Res> {
  factory $BackendVersionEntityCopyWith(BackendVersionEntity value,
          $Res Function(BackendVersionEntity) then) =
      _$BackendVersionEntityCopyWithImpl<$Res, BackendVersionEntity>;
  @useResult
  $Res call({String version});
}

/// @nodoc
class _$BackendVersionEntityCopyWithImpl<$Res,
        $Val extends BackendVersionEntity>
    implements $BackendVersionEntityCopyWith<$Res> {
  _$BackendVersionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BackendVersionEntityCopyWith<$Res>
    implements $BackendVersionEntityCopyWith<$Res> {
  factory _$$_BackendVersionEntityCopyWith(_$_BackendVersionEntity value,
          $Res Function(_$_BackendVersionEntity) then) =
      __$$_BackendVersionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String version});
}

/// @nodoc
class __$$_BackendVersionEntityCopyWithImpl<$Res>
    extends _$BackendVersionEntityCopyWithImpl<$Res, _$_BackendVersionEntity>
    implements _$$_BackendVersionEntityCopyWith<$Res> {
  __$$_BackendVersionEntityCopyWithImpl(_$_BackendVersionEntity _value,
      $Res Function(_$_BackendVersionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
  }) {
    return _then(_$_BackendVersionEntity(
      null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BackendVersionEntity implements _BackendVersionEntity {
  const _$_BackendVersionEntity(this.version);

  factory _$_BackendVersionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BackendVersionEntityFromJson(json);

  @override
  final String version;

  @override
  String toString() {
    return 'BackendVersionEntity(version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BackendVersionEntity &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BackendVersionEntityCopyWith<_$_BackendVersionEntity> get copyWith =>
      __$$_BackendVersionEntityCopyWithImpl<_$_BackendVersionEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BackendVersionEntityToJson(
      this,
    );
  }
}

abstract class _BackendVersionEntity implements BackendVersionEntity {
  const factory _BackendVersionEntity(final String version) =
      _$_BackendVersionEntity;

  factory _BackendVersionEntity.fromJson(Map<String, dynamic> json) =
      _$_BackendVersionEntity.fromJson;

  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_BackendVersionEntityCopyWith<_$_BackendVersionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
