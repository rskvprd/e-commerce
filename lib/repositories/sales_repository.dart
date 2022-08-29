import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:phone_market/models/best_seller_model.dart';
import 'package:phone_market/models/hot_sale_model.dart';

class SalesRepository {

  Future<List<HotSaleModel>> getAllHotSales() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'));
    final jsonResponse = json.decode(response.body);
    final jsonListHotSales = jsonResponse['home_store'];
    final hotSales = <HotSaleModel>[];
    for (var json in jsonListHotSales) {
      hotSales.add(HotSaleModel.fromJson(json));
    }
    return hotSales;
  }

  Future<List<BestSellerModel>> getAllBestSellers() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'));
    final jsonResponse = json.decode(response.body);
    final jsonListHotSales = jsonResponse['best_seller'];
    final bestSellers = <BestSellerModel>[];
    for (var json in jsonListHotSales) {
      bestSellers.add(BestSellerModel.fromJson(json));
    }
    return bestSellers;
  }
}
