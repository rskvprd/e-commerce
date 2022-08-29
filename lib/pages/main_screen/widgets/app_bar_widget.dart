import 'package:flutter/material.dart';
import 'package:phone_market/pages/main_screen/widgets/filter_bottom_sheet/filter_bottom_sheet_widget.dart';
import 'package:phone_market/utils.dart';

class AppBarWidget extends AppBar {
  final BuildContext context;
  AppBarWidget(this.context, {super.key})
      : super(
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
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: const ImageIcon(
                      AssetImage('assets/icons/down_arrow.png'),
                      color: MyColors.grey,
                      size: 10,
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                        child: Text(
                      'Zihuatanejo, Gro',
                      style: TextStyle(
                          color: MyColors.dark,
                          fontFamily: 'MarkPro',
                          fontWeight: FontWeight.w600),
                    )),
                  ],
                  onChanged: (_) {},
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                showFilterBottomSheet(context);
              },
              icon: const ImageIcon(AssetImage('assets/icons/filter.png'),
                  color: MyColors.dark, size: 14),
            )
          ],
        );
}
