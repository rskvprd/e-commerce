import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_market/models/best_seller_model.dart';
import 'package:phone_market/pages/main_screen/widgets/title_widget.dart';
import 'package:phone_market/repositories/sales_repository.dart';
import 'package:phone_market/utils.dart';

final getIt = GetIt.instance;

class BestSellersWidget extends StatefulWidget {
  const BestSellersWidget({Key? key}) : super(key: key);

  @override
  State<BestSellersWidget> createState() => _BestSellersWidgetState();
}

class _BestSellersWidgetState extends State<BestSellersWidget> {
  final Future<List<BestSellerModel>> bestSellersFuture =
      getIt<SalesRepository>().getAllBestSellers();
  List<BestSellerModel>? bestSellers;

  void setupBestSellers() async {
    bestSellers = await bestSellersFuture
        .onError((error, stackTrace) => throw stackTrace);
    if(mounted) {
      setState(() {});
    }
  }

  @override
  void initState() {
    setupBestSellers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWidget(title: 'Best seller', subtitle: 'see more'),
        // TODO: remove SilverPadding
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeLeft: true,
          removeRight: true,
          child: bestSellers == null
              ? Container()
              : GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) => BestSeller(
                    bestSellers![index],
                    onFavoriteTap: () {
                      final isFavorites = bestSellers![index].isFavorites;
                      setState(() {
                        bestSellers![index] =
                            bestSellers![index].copyWith(isFavorites: !isFavorites);
                      });
                    },
                  ),
                  padding: const EdgeInsets.all(10.0),
                  shrinkWrap: true,
                  itemCount: bestSellers!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 181 / 227,
                    mainAxisSpacing: 12.0,
                    crossAxisSpacing: 14.0,
                  ),
                ),
        ),
      ],
    );
  }
}

class BestSeller extends StatelessWidget {
  final BestSellerModel bestSellerModel;
  final VoidCallback? onFavoriteTap;

  const BestSeller(
    this.bestSellerModel, {
    Key? key,
    this.onFavoriteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [MyShadows.light],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              CachedNetworkImage(
                imageUrl: bestSellerModel.picture,
                height: 155,
                errorWidget: (_, __, ___) =>
                    const Text('Чето с апишкой, иногда изображения не грузят'),
              ),
              Positioned(
                  top: 6,
                  right: 12,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [MyShadows.light],
                    ),
                    child: GestureDetector(
                      onTap: onFavoriteTap,
                      child: CircleAvatar(
                        radius: 25 / 2,
                        backgroundColor: Colors.white,
                        child: ImageIcon(
                          !bestSellerModel.isFavorites
                              ? const AssetImage('assets/icons/favorites.png')
                              : const AssetImage(
                                  'assets/icons/favorites_filled.png'),
                          size: 10,
                          color: MyColors.light,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$${bestSellerModel.discountPrice}',
                      style: const TextStyle(
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w700,
                        color: MyColors.dark,
                        fontSize: 16,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 7)),
                    Text(
                      '\$${bestSellerModel.priceWithoutDiscount}',
                      style: const TextStyle(
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color: Color(0xFFCCCCCC),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                Text(
                  bestSellerModel.title,
                  maxLines: 1,
                  style: const TextStyle(
                    fontFamily: 'MarkPro',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: MyColors.dark,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
