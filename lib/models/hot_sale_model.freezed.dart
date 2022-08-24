// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hot_sale_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotSaleModel _$HotSaleModelFromJson(Map<String, dynamic> json) {
  return _HotSaleModel.fromJson(json);
}

/// @nodoc
mixin _$HotSaleModel {
  int get id => throw _privateConstructorUsedError;
  bool get isNew => throw _privateConstructorUsedError;
  bool get isBuy => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotSaleModelCopyWith<HotSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotSaleModelCopyWith<$Res> {
  factory $HotSaleModelCopyWith(
          HotSaleModel value, $Res Function(HotSaleModel) then) =
      _$HotSaleModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      bool isNew,
      bool isBuy,
      String title,
      String subtitle,
      String picture});
}

/// @nodoc
class _$HotSaleModelCopyWithImpl<$Res> implements $HotSaleModelCopyWith<$Res> {
  _$HotSaleModelCopyWithImpl(this._value, this._then);

  final HotSaleModel _value;
  // ignore: unused_field
  final $Res Function(HotSaleModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? isBuy = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuy: isBuy == freezed
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HotSaleModelCopyWith<$Res>
    implements $HotSaleModelCopyWith<$Res> {
  factory _$$_HotSaleModelCopyWith(
          _$_HotSaleModel value, $Res Function(_$_HotSaleModel) then) =
      __$$_HotSaleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool isNew,
      bool isBuy,
      String title,
      String subtitle,
      String picture});
}

/// @nodoc
class __$$_HotSaleModelCopyWithImpl<$Res>
    extends _$HotSaleModelCopyWithImpl<$Res>
    implements _$$_HotSaleModelCopyWith<$Res> {
  __$$_HotSaleModelCopyWithImpl(
      _$_HotSaleModel _value, $Res Function(_$_HotSaleModel) _then)
      : super(_value, (v) => _then(v as _$_HotSaleModel));

  @override
  _$_HotSaleModel get _value => super._value as _$_HotSaleModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isNew = freezed,
    Object? isBuy = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_HotSaleModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isNew: isNew == freezed
          ? _value.isNew
          : isNew // ignore: cast_nullable_to_non_nullable
              as bool,
      isBuy: isBuy == freezed
          ? _value.isBuy
          : isBuy // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HotSaleModel implements _HotSaleModel {
  const _$_HotSaleModel(
      {required this.id,
      this.isNew = false,
      this.isBuy = true,
      required this.title,
      required this.subtitle,
      required this.picture});

  factory _$_HotSaleModel.fromJson(Map<String, dynamic> json) =>
      _$$_HotSaleModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool isNew;
  @override
  @JsonKey()
  final bool isBuy;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String picture;

  @override
  String toString() {
    return 'HotSaleModel(id: $id, isNew: $isNew, isBuy: $isBuy, title: $title, subtitle: $subtitle, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HotSaleModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isNew, isNew) &&
            const DeepCollectionEquality().equals(other.isBuy, isBuy) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isNew),
      const DeepCollectionEquality().hash(isBuy),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$$_HotSaleModelCopyWith<_$_HotSaleModel> get copyWith =>
      __$$_HotSaleModelCopyWithImpl<_$_HotSaleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotSaleModelToJson(
      this,
    );
  }
}

abstract class _HotSaleModel implements HotSaleModel {
  const factory _HotSaleModel(
      {required final int id,
      final bool isNew,
      final bool isBuy,
      required final String title,
      required final String subtitle,
      required final String picture}) = _$_HotSaleModel;

  factory _HotSaleModel.fromJson(Map<String, dynamic> json) =
      _$_HotSaleModel.fromJson;

  @override
  int get id;
  @override
  bool get isNew;
  @override
  bool get isBuy;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_HotSaleModelCopyWith<_$_HotSaleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
