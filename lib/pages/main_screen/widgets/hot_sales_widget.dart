import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:phone_market/models/hot_sale_model.dart';
import 'package:phone_market/pages/main_screen/widgets/title_widget.dart';
import 'package:phone_market/repositories/hot_sales_repository.dart';

final getIt = GetIt.instance;

class HotSales extends StatefulWidget {
  const HotSales({Key? key}) : super(key: key);

  @override
  State<HotSales> createState() => _HotSalesState();
}

class _HotSalesState extends State<HotSales> {
  final HotSalesRepository hotSalesRepository = getIt();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TitleWidget(
            title: 'Hot sales',
            subtitle: 'see more',
            onTap: () {},
          ),
          FutureBuilder<List<HotSaleModel>>(
              future: hotSalesRepository.getAll(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done) {
                  return CircularProgressIndicator();
                }
                if (!snapshot.hasData) return Text('Нет данных');
                return Text('oleg');
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(snapshot.data![index].title),
                        subtitle: Text(snapshot.data![index].subtitle),
                      );
                    });
              })
        ],
      ),
    );
  }
}
