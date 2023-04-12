// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_info_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageInfoResEntity _$ImageInfoResEntityFromJson(Map<String, dynamic> json) {
  return _ImageInfoResEntity.fromJson(json);
}

/// @nodoc
mixin _$ImageInfoResEntity {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageInfoEntity> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageInfoResEntityCopyWith<ImageInfoResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageInfoResEntityCopyWith<$Res> {
  factory $ImageInfoResEntityCopyWith(
          ImageInfoResEntity value, $Res Function(ImageInfoResEntity) then) =
      _$ImageInfoResEntityCopyWithImpl<$Res, ImageInfoResEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'images') List<ImageInfoEntity> images});
}

/// @nodoc
class _$ImageInfoResEntityCopyWithImpl<$Res, $Val extends ImageInfoResEntity>
    implements $ImageInfoResEntityCopyWith<$Res> {
  _$ImageInfoResEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageInfoEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageInfoResEntityCopyWith<$Res>
    implements $ImageInfoResEntityCopyWith<$Res> {
  factory _$$_ImageInfoResEntityCopyWith(_$_ImageInfoResEntity value,
          $Res Function(_$_ImageInfoResEntity) then) =
      __$$_ImageInfoResEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'images') List<ImageInfoEntity> images});
}

/// @nodoc
class __$$_ImageInfoResEntityCopyWithImpl<$Res>
    extends _$ImageInfoResEntityCopyWithImpl<$Res, _$_ImageInfoResEntity>
    implements _$$_ImageInfoResEntityCopyWith<$Res> {
  __$$_ImageInfoResEntityCopyWithImpl(
      _$_ImageInfoResEntity _value, $Res Function(_$_ImageInfoResEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? images = null,
  }) {
    return _then(_$_ImageInfoResEntity(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageInfoEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageInfoResEntity implements _ImageInfoResEntity {
  const _$_ImageInfoResEntity(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'images') required final List<ImageInfoEntity> images})
      : _images = images;

  factory _$_ImageInfoResEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ImageInfoResEntityFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  final List<ImageInfoEntity> _images;
  @override
  @JsonKey(name: 'images')
  List<ImageInfoEntity> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ImageInfoResEntity(page: $page, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageInfoResEntity &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageInfoResEntityCopyWith<_$_ImageInfoResEntity> get copyWith =>
      __$$_ImageInfoResEntityCopyWithImpl<_$_ImageInfoResEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageInfoResEntityToJson(
      this,
    );
  }
}

abstract class _ImageInfoResEntity implements ImageInfoResEntity {
  const factory _ImageInfoResEntity(
      {@JsonKey(name: 'page')
          required final int page,
      @JsonKey(name: 'images')
          required final List<ImageInfoEntity> images}) = _$_ImageInfoResEntity;

  factory _ImageInfoResEntity.fromJson(Map<String, dynamic> json) =
      _$_ImageInfoResEntity.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'images')
  List<ImageInfoEntity> get images;
  @override
  @JsonKey(ignore: true)
  _$$_ImageInfoResEntityCopyWith<_$_ImageInfoResEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
