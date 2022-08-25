// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BestSellerModel _$$_BestSellerModelFromJson(Map<String, dynamic> json) =>
    _$_BestSellerModel(
      id: json['id'] as int,
      isFavorites: json['is_favorites'] as bool? ?? false,
      title: json['title'] as String,
      priceWithoutDiscount: json['price_without_discount'] as int,
      discountPrice: json['discount_price'] as int,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_BestSellerModelToJson(_$_BestSellerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_favorites': instance.isFavorites,
      'title': instance.title,
      'price_without_discount': instance.priceWithoutDiscount,
      'discount_price': instance.discountPrice,
      'picture': instance.picture,
    };
