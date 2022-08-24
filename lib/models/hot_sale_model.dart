import 'package:freezed_annotation/freezed_annotation.dart';

part 'hot_sale_model.freezed.dart';

part 'hot_sale_model.g.dart';

@Freezed()
class HotSaleModel with _$HotSaleModel {
  const factory HotSaleModel({
    required int id,
    @Default(false) bool isNew,
    @Default(true) bool isBuy,
    required String title,
    required String subtitle,
    required String picture,
  }) = _HotSaleModel;

  factory HotSaleModel.fromJson(Map<String, dynamic> json) =>
      _$HotSaleModelFromJson(json);
}
