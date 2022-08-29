import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class SelectSizeWidget extends StatelessWidget {
  const SelectSizeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      itemHeight: 100,
      isDense: true,
      borderRadius: BorderRadius.circular(5),
      value: 0,
      icon: const ImageIcon(
        AssetImage('assets/icons/down_arrow.png'),
        color: MyColors.grey,
        size: 15,
      ),
      isExpanded: true,
      selectedItemBuilder: (context) {
        return [
          const Text(
            '4.5 to 5.5 inches',
            style: TextStyle(
                color: MyColors.dark,
                fontSize: 18,
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.normal),
          )
        ];
      },
      items: const [
        DropdownMenuItem(
          enabled: false,
          value: 0,
          child: Text('4.5 to 5.5 inches'),
        ),
      ],
      onChanged: null,
    );
  }
}
