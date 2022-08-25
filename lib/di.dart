import 'package:get_it/get_it.dart';
import 'package:phone_market/repositories/sales_repository.dart';

final GetIt getIt = GetIt.instance;

void setup(){
  getIt.registerSingleton<SalesRepository>(SalesRepository());
}