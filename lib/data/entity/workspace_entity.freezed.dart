// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workspace_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkspaceEntity _$WorkspaceEntityFromJson(Map<String, dynamic> json) {
  return _WorkspaceEntity.fromJson(json);
}

/// @nodoc
mixin _$WorkspaceEntity {
  @JsonKey(name: 'workspace_id')
  String get workspaceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'available')
  bool get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkspaceEntityCopyWith<WorkspaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkspaceEntityCopyWith<$Res> {
  factory $WorkspaceEntityCopyWith(
          WorkspaceEntity value, $Res Function(WorkspaceEntity) then) =
      _$WorkspaceEntityCopyWithImpl<$Res, WorkspaceEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'workspace_id') String workspaceId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'available') bool available});
}

/// @nodoc
class _$WorkspaceEntityCopyWithImpl<$Res, $Val extends WorkspaceEntity>
    implements $WorkspaceEntityCopyWith<$Res> {
  _$WorkspaceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workspaceId = null,
    Object? name = null,
    Object? available = null,
  }) {
    return _then(_value.copyWith(
      workspaceId: null == workspaceId
          ? _value.workspaceId
          : workspaceId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkspaceEntityCopyWith<$Res>
    implements $WorkspaceEntityCopyWith<$Res> {
  factory _$$_WorkspaceEntityCopyWith(
          _$_WorkspaceEntity value, $Res Function(_$_WorkspaceEntity) then) =
      __$$_WorkspaceEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'workspace_id') String workspaceId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'available') bool available});
}

/// @nodoc
class __$$_WorkspaceEntityCopyWithImpl<$Res>
    extends _$WorkspaceEntityCopyWithImpl<$Res, _$_WorkspaceEntity>
    implements _$$_WorkspaceEntityCopyWith<$Res> {
  __$$_WorkspaceEntityCopyWithImpl(
      _$_WorkspaceEntity _value, $Res Function(_$_WorkspaceEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workspaceId = null,
    Object? name = null,
    Object? available = null,
  }) {
    return _then(_$_WorkspaceEntity(
      workspaceId: null == workspaceId
          ? _value.workspaceId
          : workspaceId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkspaceEntity implements _WorkspaceEntity {
  const _$_WorkspaceEntity(
      {@JsonKey(name: 'workspace_id') required this.workspaceId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'available') required this.available});

  factory _$_WorkspaceEntity.fromJson(Map<String, dynamic> json) =>
      _$$_WorkspaceEntityFromJson(json);

  @override
  @JsonKey(name: 'workspace_id')
  final String workspaceId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'available')
  final bool available;

  @override
  String toString() {
    return 'WorkspaceEntity(workspaceId: $workspaceId, name: $name, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkspaceEntity &&
            (identical(other.workspaceId, workspaceId) ||
                other.workspaceId == workspaceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, workspaceId, name, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkspaceEntityCopyWith<_$_WorkspaceEntity> get copyWith =>
      __$$_WorkspaceEntityCopyWithImpl<_$_WorkspaceEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkspaceEntityToJson(
      this,
    );
  }
}

abstract class _WorkspaceEntity implements WorkspaceEntity {
  const factory _WorkspaceEntity(
          {@JsonKey(name: 'workspace_id') required final String workspaceId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'available') required final bool available}) =
      _$_WorkspaceEntity;

  factory _WorkspaceEntity.fromJson(Map<String, dynamic> json) =
      _$_WorkspaceEntity.fromJson;

  @override
  @JsonKey(name: 'workspace_id')
  String get workspaceId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'available')
  bool get available;
  @override
  @JsonKey(ignore: true)
  _$$_WorkspaceEntityCopyWith<_$_WorkspaceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
