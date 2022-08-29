import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

RangeValues priceRange = const RangeValues(0, 10000);

class SelectPriceWidget extends StatefulWidget {
  const SelectPriceWidget({Key? key}) : super(key: key);

  @override
  State<SelectPriceWidget> createState() => _SelectPriceWidgetState();
}

class _SelectPriceWidgetState extends State<SelectPriceWidget> {
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
          Text(
            '\$${priceRange.start.toInt()} - \$${priceRange.end.toInt()}',
            style: const TextStyle(
                color: MyColors.dark,
                fontSize: 18,
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.normal),
          )
        ];
      },
      items: const [
        DropdownMenuItem(enabled: false, value: 0, child: PriceRangeWidget()),
      ],
      onChanged: (_) {
        setState(() {
          priceRange = const RangeValues(1, 100);
        });
      },
    );
  }
}

class PriceRangeWidget extends StatefulWidget {
  const PriceRangeWidget({Key? key}) : super(key: key);

  @override
  State<PriceRangeWidget> createState() => _PriceRangeWidgetState();
}

class _PriceRangeWidgetState extends State<PriceRangeWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RangeSlider(
          activeColor: MyColors.light,
          inactiveColor: MyColors.grey,
          labels: RangeLabels(
              '\$${priceRange.start.toInt()}', '\$${priceRange.end.toInt()}'),
          divisions: 1000,
          min: 0,
          max: 10000,
          onChanged: (RangeValues value) {
            setState(() {
              priceRange = value;
            });
          },
          values: priceRange,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: MyColors.light,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MarkPro',
                  fontSize: 18,
                ),
              ),
            ))
      ],
    );
  }
}
