import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_market/models/hot_sale_model.dart';
import 'package:phone_market/pages/main_screen/widgets/title_widget.dart';
import 'package:phone_market/repositories/hot_sales_repository.dart';
import 'package:phone_market/utils.dart';

final getIt = GetIt.instance;

class HotSales extends StatefulWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  State<HotSales> createState() => _HotSalesState();
}

class _HotSalesState extends State<HotSales> {
  final Future<List<HotSaleModel>> hotSaleModels =
      getIt<HotSalesRepository>().getAll();
  // int currentPage = 0;
  // final PageController controller = PageController(
  //   initialPage: 0,
  //   keepPage: false,
  //   viewportFraction: 0.5,
  // );
  //
  // @override
  // dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          title: 'Hot sales',
          subtitle: 'see more',
          onTap: () {},
        ),
        Container(
          height: 182,
          width: 378,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF101010),
          ),
          child: FutureBuilder<List<HotSaleModel>>(
              future: hotSaleModels,
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  throw snapshot.stackTrace!;
                }
                if (!snapshot.hasData) return const Text('Нет данных');
                return Product(
                  hotSaleModel: snapshot.requireData[0],
                );
              }),
        ),
      ],
    );
  }
}

class Product extends StatelessWidget {
  final HotSaleModel hotSaleModel;

  const Product({Key? key, required this.hotSaleModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 182,
        width: 378,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF101010),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Align(
                  widthFactor: 0.3,
                  heightFactor: 0.7,
                  alignment: Alignment.topCenter,
                  child: Image.network(
                    hotSaleModel.picture,
                    width: 600,
                  )),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: hotSaleModel.isNew
                        ? MyColors.light
                        : Colors.transparent,
                    child: Text(
                      'New',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'SFPro',
                          fontSize: 9,
                          color: hotSaleModel.isNew
                              ? Colors.white
                              : Colors.transparent),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 12)),
                  Text(
                    hotSaleModel.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'SFPro',
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 5)),
                  Text(
                    hotSaleModel.subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'SFPro',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 12)),
                  MaterialButton(
                    height: 25,
                    minWidth: 98,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        side: const BorderSide(
                            color: Colors.transparent,
                            style: BorderStyle.none)),
                    color: Colors.white,
                    onPressed: () {},
                    child: const Text(
                      'Buy now!',
                      style: TextStyle(
                        fontFamily: 'SFPro',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: MyColors.dark,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
