import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class FilterOptionWidget extends StatelessWidget {
  final String title;
  final Widget dropdownButton;

  const FilterOptionWidget(
      {Key? key, required this.title, required this.dropdownButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: MyColors.dark,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: 'MarkPro',
          ),
        ),
        Container(
          height: 37,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 8.0),
          child: InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFDCDCDC),
                    )),
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 0.0)),
            child: DropdownButtonHideUnderline(child: dropdownButton),
          ),
        )
      ],
    );
  }
}
