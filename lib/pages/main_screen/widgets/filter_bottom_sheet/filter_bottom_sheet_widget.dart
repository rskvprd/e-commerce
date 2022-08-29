import 'package:flutter/material.dart';
import 'package:phone_market/pages/main_screen/widgets/filter_bottom_sheet/filter_option_widget.dart';
import 'package:phone_market/pages/main_screen/widgets/filter_bottom_sheet/select_brand_widget.dart';
import 'package:phone_market/pages/main_screen/widgets/filter_bottom_sheet/select_price_widget.dart';
import 'package:phone_market/pages/main_screen/widgets/filter_bottom_sheet/select_size_widget.dart';
import 'package:phone_market/utils.dart';

void showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    barrierColor: Colors.transparent,
    backgroundColor: Colors.white,
    context: context,
    elevation: 10,
    builder: (context) => Container(
      padding: const EdgeInsets.fromLTRB(44.0, 24.0, 20.0, 0.0),
      height: 375,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Container(
                  height: 37,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.dark,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 15,
                  ),
                )),
            const Spacer(
              flex: 2,
            ),
            const Text(
              'Filter options',
              style: TextStyle(
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: MyColors.dark,
              ),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.light,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  height: 37,
                  alignment: Alignment.center,
                  child: const Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'MarkPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ))
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(8.0, 22.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              FilterOptionWidget(
                title: 'Brand',
                dropdownButton: SelectBrandWidget(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              FilterOptionWidget(
                title: 'Price',
                dropdownButton: SelectPriceWidget(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
              ),
              FilterOptionWidget(
                title: 'Size',
                dropdownButton: SelectSizeWidget(),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}
