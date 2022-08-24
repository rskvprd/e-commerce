import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:phone_market/models/hot_sale_model.dart';

class HotSalesRepository {
  Future<List<HotSaleModel>> getAll() async {
    final response = await http.get(Uri.parse(
        'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'));
    final jsonResponse = json.decode(response.body);
    final jsonListHotSales = jsonResponse['home_store'];
    print(jsonListHotSales);
    final hotSales = <HotSaleModel>[];
    for (var json in jsonResponse['home_store']){
      hotSales.add(HotSaleModel.fromJson(json));
    }
    return hotSales;
  }
}
