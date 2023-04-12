// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageInfoEntity _$ImageInfoEntityFromJson(Map<String, dynamic> json) {
  return _ImageInfoEntity.fromJson(json);
}

/// @nodoc
mixin _$ImageInfoEntity {
  @JsonKey(name: 'image_id')
  String get imageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'ext')
  String get ext => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'memo')
  String get memo => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  String get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_group_thumb_nail')
  bool get isGroupThumbNail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageInfoEntityCopyWith<ImageInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageInfoEntityCopyWith<$Res> {
  factory $ImageInfoEntityCopyWith(
          ImageInfoEntity value, $Res Function(ImageInfoEntity) then) =
      _$ImageInfoEntityCopyWithImpl<$Res, ImageInfoEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_id') String imageId,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'ext') String ext,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'memo') String memo,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'tags') List<String> tags,
      @JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'is_group_thumb_nail') bool isGroupThumbNail});
}

/// @nodoc
class _$ImageInfoEntityCopyWithImpl<$Res, $Val extends ImageInfoEntity>
    implements $ImageInfoEntityCopyWith<$Res> {
  _$ImageInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? fileName = null,
    Object? ext = null,
    Object? width = null,
    Object? height = null,
    Object? memo = null,
    Object? author = null,
    Object? createdAt = null,
    Object? tags = null,
    Object? groupId = null,
    Object? isGroupThumbNail = null,
  }) {
    return _then(_value.copyWith(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      isGroupThumbNail: null == isGroupThumbNail
          ? _value.isGroupThumbNail
          : isGroupThumbNail // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageInfoEntityCopyWith<$Res>
    implements $ImageInfoEntityCopyWith<$Res> {
  factory _$$_ImageInfoEntityCopyWith(
          _$_ImageInfoEntity value, $Res Function(_$_ImageInfoEntity) then) =
      __$$_ImageInfoEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_id') String imageId,
      @JsonKey(name: 'file_name') String fileName,
      @JsonKey(name: 'ext') String ext,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'memo') String memo,
      @JsonKey(name: 'author') String author,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'tags') List<String> tags,
      @JsonKey(name: 'group_id') String groupId,
      @JsonKey(name: 'is_group_thumb_nail') bool isGroupThumbNail});
}

/// @nodoc
class __$$_ImageInfoEntityCopyWithImpl<$Res>
    extends _$ImageInfoEntityCopyWithImpl<$Res, _$_ImageInfoEntity>
    implements _$$_ImageInfoEntityCopyWith<$Res> {
  __$$_ImageInfoEntityCopyWithImpl(
      _$_ImageInfoEntity _value, $Res Function(_$_ImageInfoEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? fileName = null,
    Object? ext = null,
    Object? width = null,
    Object? height = null,
    Object? memo = null,
    Object? author = null,
    Object? createdAt = null,
    Object? tags = null,
    Object? groupId = null,
    Object? isGroupThumbNail = null,
  }) {
    return _then(_$_ImageInfoEntity(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      ext: null == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      isGroupThumbNail: null == isGroupThumbNail
          ? _value.isGroupThumbNail
          : isGroupThumbNail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageInfoEntity implements _ImageInfoEntity {
  const _$_ImageInfoEntity(
      {@JsonKey(name: 'image_id') required this.imageId,
      @JsonKey(name: 'file_name') required this.fileName,
      @JsonKey(name: 'ext') required this.ext,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'memo') required this.memo,
      @JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'tags') required final List<String> tags,
      @JsonKey(name: 'group_id') required this.groupId,
      @JsonKey(name: 'is_group_thumb_nail') required this.isGroupThumbNail})
      : _tags = tags;

  factory _$_ImageInfoEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ImageInfoEntityFromJson(json);

  @override
  @JsonKey(name: 'image_id')
  final String imageId;
  @override
  @JsonKey(name: 'file_name')
  final String fileName;
  @override
  @JsonKey(name: 'ext')
  final String ext;
  @override
  @JsonKey(name: 'width')
  final int width;
  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'memo')
  final String memo;
  @override
  @JsonKey(name: 'author')
  final String author;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  final List<String> _tags;
  @override
  @JsonKey(name: 'tags')
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'group_id')
  final String groupId;
  @override
  @JsonKey(name: 'is_group_thumb_nail')
  final bool isGroupThumbNail;

  @override
  String toString() {
    return 'ImageInfoEntity(imageId: $imageId, fileName: $fileName, ext: $ext, width: $width, height: $height, memo: $memo, author: $author, createdAt: $createdAt, tags: $tags, groupId: $groupId, isGroupThumbNail: $isGroupThumbNail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageInfoEntity &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.isGroupThumbNail, isGroupThumbNail) ||
                other.isGroupThumbNail == isGroupThumbNail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      imageId,
      fileName,
      ext,
      width,
      height,
      memo,
      author,
      createdAt,
      const DeepCollectionEquality().hash(_tags),
      groupId,
      isGroupThumbNail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageInfoEntityCopyWith<_$_ImageInfoEntity> get copyWith =>
      __$$_ImageInfoEntityCopyWithImpl<_$_ImageInfoEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageInfoEntityToJson(
      this,
    );
  }
}

abstract class _ImageInfoEntity implements ImageInfoEntity {
  const factory _ImageInfoEntity(
      {@JsonKey(name: 'image_id')
          required final String imageId,
      @JsonKey(name: 'file_name')
          required final String fileName,
      @JsonKey(name: 'ext')
          required final String ext,
      @JsonKey(name: 'width')
          required final int width,
      @JsonKey(name: 'height')
          required final int height,
      @JsonKey(name: 'memo')
          required final String memo,
      @JsonKey(name: 'author')
          required final String author,
      @JsonKey(name: 'created_at')
          required final String createdAt,
      @JsonKey(name: 'tags')
          required final List<String> tags,
      @JsonKey(name: 'group_id')
          required final String groupId,
      @JsonKey(name: 'is_group_thumb_nail')
          required final bool isGroupThumbNail}) = _$_ImageInfoEntity;

  factory _ImageInfoEntity.fromJson(Map<String, dynamic> json) =
      _$_ImageInfoEntity.fromJson;

  @override
  @JsonKey(name: 'image_id')
  String get imageId;
  @override
  @JsonKey(name: 'file_name')
  String get fileName;
  @override
  @JsonKey(name: 'ext')
  String get ext;
  @override
  @JsonKey(name: 'width')
  int get width;
  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(name: 'memo')
  String get memo;
  @override
  @JsonKey(name: 'author')
  String get author;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'tags')
  List<String> get tags;
  @override
  @JsonKey(name: 'group_id')
  String get groupId;
  @override
  @JsonKey(name: 'is_group_thumb_nail')
  bool get isGroupThumbNail;
  @override
  @JsonKey(ignore: true)
  _$$_ImageInfoEntityCopyWith<_$_ImageInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
