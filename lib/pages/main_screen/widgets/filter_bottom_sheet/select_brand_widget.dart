import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class SelectBrandWidget extends StatefulWidget {
  const SelectBrandWidget({Key? key}) : super(key: key);

  @override
  State<SelectBrandWidget> createState() => _SelectBrandWidgetState();
}

class _SelectBrandWidgetState extends State<SelectBrandWidget> {
  String value = 'Samsung';
  static const TextStyle _style = TextStyle(
      color: MyColors.dark,
      fontFamily: 'MarkPro',
      fontSize: 18,
      fontWeight: FontWeight.normal);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isDense: true,
      borderRadius: BorderRadius.circular(5),
      value: value,
      selectedItemBuilder: (context) => [
        Text(
          value,
          style: _style,
        )
      ],
      icon: const ImageIcon(
        AssetImage('assets/icons/down_arrow.png'),
        color: MyColors.grey,
        size: 15,
      ),
      isExpanded: true,
      items: const [
        DropdownMenuItem(
            value: 'Samsung',
            child: Text(
              'Samsung',
              style: _style,
            )),
        DropdownMenuItem(
          value: "Huawei",
          child: Text(
            'Huawei',
            style: _style,
          ),
        ),
      ],
      onChanged: (value) {
        this.value = value ?? this.value;
      },
    );
  }
}
