import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class SearchEngineWidget extends StatelessWidget {
  const SearchEngineWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Container(
        width: 280,
        height: 34,
        child: TextField(
          textAlign: TextAlign.start,
          textAlignVertical: const TextAlignVertical(y: 1),
          maxLines: 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
            ),
            hintText: 'Search',
            hintMaxLines: 1,
            hintStyle: const TextStyle(fontFamily: 'MarkPro', fontSize: 13),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(
              Icons.search_outlined,
              size: 17,
              color: MyColors.light,
            ),
          ),
        ),
      ),
      const Padding(padding: EdgeInsets.only(right: 5)),
      IconButton(
          onPressed: () {},
          icon: const CircleAvatar(
            radius: 34 / 2,
            backgroundColor: MyColors.light,
            child: ImageIcon(
              AssetImage('assets/icons/qr_code.png'),
              size: 13,
              color: Colors.white,
            ),
          ))
    ]);
  }
}
