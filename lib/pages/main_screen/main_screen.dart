import 'package:flutter/material.dart';
import 'package:phone_market/pages/main_screen/widgets/categories_widget.dart';
import 'package:phone_market/utils.dart';

import 'widgets/bottom_navigation_bar_widget.dart';
import 'widgets/search_engine_widget.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ImageIcon(
              AssetImage(
                'assets/icons/pin.png',
              ),
              size: 16,
              color: MyColors.light,
            ),
            const Padding(padding: EdgeInsets.only(right: 10)),
            DropdownButtonHideUnderline(
              child: DropdownButton<Text>(
                items: const [
                  DropdownMenuItem(
                      child: Text(
                    'Zihuatanejo, Gro',
                    style: TextStyle(
                        color: MyColors.dark,
                        fontFamily: 'MarkPro',
                        fontWeight: FontWeight.w500),
                  )),
                ],
                onChanged: (_) {},
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage('assets/icons/filter.png'),
                color: MyColors.dark, size: 13),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: const [
              CategoriesWidget(),
              Center(
                child: SearchEngineWidget(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}

