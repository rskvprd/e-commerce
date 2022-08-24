// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HotSaleModel _$$_HotSaleModelFromJson(Map<String, dynamic> json) =>
    _$_HotSaleModel(
      id: json['id'] as int,
      isNew: json['is_new'] as bool? ?? false,
      isBuy: json['is_buy'] as bool? ?? true,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_HotSaleModelToJson(_$_HotSaleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_new': instance.isNew,
      'is_buy': instance.isBuy,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'picture': instance.picture,
    };
