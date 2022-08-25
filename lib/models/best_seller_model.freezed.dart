// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'best_seller_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BestSellerModel _$BestSellerModelFromJson(Map<String, dynamic> json) {
  return _BestSellerModel.fromJson(json);
}

/// @nodoc
mixin _$BestSellerModel {
  int get id => throw _privateConstructorUsedError;
  bool get isFavorites => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get priceWithoutDiscount => throw _privateConstructorUsedError;
  int get discountPrice => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellerModelCopyWith<BestSellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerModelCopyWith<$Res> {
  factory $BestSellerModelCopyWith(
          BestSellerModel value, $Res Function(BestSellerModel) then) =
      _$BestSellerModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      bool isFavorites,
      String title,
      int priceWithoutDiscount,
      int discountPrice,
      String picture});
}

/// @nodoc
class _$BestSellerModelCopyWithImpl<$Res>
    implements $BestSellerModelCopyWith<$Res> {
  _$BestSellerModelCopyWithImpl(this._value, this._then);

  final BestSellerModel _value;
  // ignore: unused_field
  final $Res Function(BestSellerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorites = freezed,
    Object? title = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? discountPrice = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorites: isFavorites == freezed
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutDiscount: priceWithoutDiscount == freezed
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BestSellerModelCopyWith<$Res>
    implements $BestSellerModelCopyWith<$Res> {
  factory _$$_BestSellerModelCopyWith(
          _$_BestSellerModel value, $Res Function(_$_BestSellerModel) then) =
      __$$_BestSellerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      bool isFavorites,
      String title,
      int priceWithoutDiscount,
      int discountPrice,
      String picture});
}

/// @nodoc
class __$$_BestSellerModelCopyWithImpl<$Res>
    extends _$BestSellerModelCopyWithImpl<$Res>
    implements _$$_BestSellerModelCopyWith<$Res> {
  __$$_BestSellerModelCopyWithImpl(
      _$_BestSellerModel _value, $Res Function(_$_BestSellerModel) _then)
      : super(_value, (v) => _then(v as _$_BestSellerModel));

  @override
  _$_BestSellerModel get _value => super._value as _$_BestSellerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? isFavorites = freezed,
    Object? title = freezed,
    Object? priceWithoutDiscount = freezed,
    Object? discountPrice = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_BestSellerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorites: isFavorites == freezed
          ? _value.isFavorites
          : isFavorites // ignore: cast_nullable_to_non_nullable
              as bool,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      priceWithoutDiscount: priceWithoutDiscount == freezed
          ? _value.priceWithoutDiscount
          : priceWithoutDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      discountPrice: discountPrice == freezed
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_BestSellerModel implements _BestSellerModel {
  const _$_BestSellerModel(
      {required this.id,
      this.isFavorites = false,
      required this.title,
      required this.priceWithoutDiscount,
      required this.discountPrice,
      required this.picture});

  factory _$_BestSellerModel.fromJson(Map<String, dynamic> json) =>
      _$$_BestSellerModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool isFavorites;
  @override
  final String title;
  @override
  final int priceWithoutDiscount;
  @override
  final int discountPrice;
  @override
  final String picture;

  @override
  String toString() {
    return 'BestSellerModel(id: $id, isFavorites: $isFavorites, title: $title, priceWithoutDiscount: $priceWithoutDiscount, discountPrice: $discountPrice, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BestSellerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.isFavorites, isFavorites) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.priceWithoutDiscount, priceWithoutDiscount) &&
            const DeepCollectionEquality()
                .equals(other.discountPrice, discountPrice) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(isFavorites),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(priceWithoutDiscount),
      const DeepCollectionEquality().hash(discountPrice),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$$_BestSellerModelCopyWith<_$_BestSellerModel> get copyWith =>
      __$$_BestSellerModelCopyWithImpl<_$_BestSellerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BestSellerModelToJson(
      this,
    );
  }
}

abstract class _BestSellerModel implements BestSellerModel {
  const factory _BestSellerModel(
      {required final int id,
      final bool isFavorites,
      required final String title,
      required final int priceWithoutDiscount,
      required final int discountPrice,
      required final String picture}) = _$_BestSellerModel;

  factory _BestSellerModel.fromJson(Map<String, dynamic> json) =
      _$_BestSellerModel.fromJson;

  @override
  int get id;
  @override
  bool get isFavorites;
  @override
  String get title;
  @override
  int get priceWithoutDiscount;
  @override
  int get discountPrice;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$$_BestSellerModelCopyWith<_$_BestSellerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
