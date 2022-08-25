import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_market/models/hot_sale_model.dart';
import 'package:phone_market/pages/main_screen/widgets/title_widget.dart';
import 'package:phone_market/repositories/sales_repository.dart';
import 'package:phone_market/utils.dart';

final getIt = GetIt.instance;
const double height = 182;
const double width = 378;

class HotSales extends StatefulWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  State<HotSales> createState() => _HotSalesState();
}

class _HotSalesState extends State<HotSales> {
  final Future<List<HotSaleModel>> hotSaleModels =
      getIt<SalesRepository>().getAllHotSales();
  late final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          title: 'Hot sales',
          subtitle: 'see more',
          onTap: () {},
        ),
        FutureBuilder<List<HotSaleModel>>(
            future: hotSaleModels,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const _Container(child: null);
              }
              return CarouselSlider(
                  items: snapshot.requireData.map((e) => Product(e)).toList(),
                  options: CarouselOptions(
                    height: height,
                    viewportFraction: 1,
                    aspectRatio: 0,
                    enlargeCenterPage: true,
                  ));
            })
      ],
    );
  }
}

class _Container extends StatelessWidget {
  final Widget? child;

  const _Container({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF101010),
      ),
      child: child,
    );
  }
}

class Product extends StatelessWidget {
  final HotSaleModel hotSaleModel;

  const Product(this.hotSaleModel, {Key? key}) : super(key: key);

  // Pictures are extremely different and that's why need aligns for every pic
  static const Map<int, dynamic> _aligns = {
    // id : widthFactor, heightFactor, imageWidth
    1: [0.3, 0.7, 230.0],
    2: [1.0, 1.0, 325.0],
    3: [0.0, 0.55, 350.0],
  };

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: _Container(
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Align(
                  widthFactor: _aligns[hotSaleModel.id][0],
                  heightFactor: _aligns[hotSaleModel.id][1],
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: CachedNetworkImageProvider(
                      hotSaleModel.picture,
                    ),
                    height: _aligns[hotSaleModel.id][2],
                  ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
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
                  const Spacer(
                    flex: 5,
                  ),
                  Text(
                    hotSaleModel.title,
                    style: const TextStyle(
                      shadows: [Shadow(color: MyColors.dark, blurRadius: 8.0)],
                      color: Colors.white,
                      fontFamily: 'SFPro',
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    hotSaleModel.subtitle,
                    style: const TextStyle(
                      shadows: [Shadow(color: MyColors.dark, blurRadius: 8.0)],
                      color: Colors.white,
                      fontFamily: 'SFPro',
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
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
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
