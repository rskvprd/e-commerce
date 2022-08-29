import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

import 'widgets/app_bar_widget.dart';
import 'widgets/best_sellers_widget.dart';
import 'widgets/select_category_widget.dart';
import 'widgets/bottom_navigation_bar_widget.dart';
import 'widgets/hot_sales_widget.dart';
import 'widgets/search_engine_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: MyColors.white,
      appBar: AppBarWidget(context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: const [
              SelectCategoryWidget(),
              Padding(padding: EdgeInsets.only(bottom: 11)),
              Center(
                child: SearchEngineWidget(),
              ),
              Padding(padding: EdgeInsets.only(bottom: 11)),
              HotSales(),
              Padding(padding: EdgeInsets.only(bottom: 11)),
              BestSellersWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
  }
