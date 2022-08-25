import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_seller_model.freezed.dart';

part 'best_seller_model.g.dart';


@Freezed()
class BestSellerModel with _$BestSellerModel {

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BestSellerModel({
    required int id,
    @Default(false) bool isFavorites,
    required String title,
    required int priceWithoutDiscount,
    required int discountPrice,
    required String picture,
  }) = _BestSellerModel;

  factory BestSellerModel.fromJson(Map<String, dynamic> json) =>
      _$BestSellerModelFromJson(json);
}