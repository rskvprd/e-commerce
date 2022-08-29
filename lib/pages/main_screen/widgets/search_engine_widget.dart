import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class SearchEngineWidget extends StatelessWidget {
  const SearchEngineWidget({Key? key}) : super(key: key);
  static const searchEngineTextStyle =
      TextStyle(fontFamily: 'MarkPro', fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        width: 280,
        height: 40,
        child: Material(
          elevation: 10,
          color: Colors.transparent,
          shadowColor: Colors.black12,
          child: TextField(
            textAlign: TextAlign.start,
            style: searchEngineTextStyle,
            textAlignVertical: const TextAlignVertical(y: 1),
            maxLines: 1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              ),
              hintText: 'Search',
              hintMaxLines: 1,
              hintStyle: searchEngineTextStyle,
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(
                Icons.search,
                size: 25,
                color: MyColors.light,
              ),
            ),
          ),
        ),
      ),
      const Padding(padding: EdgeInsets.only(right: 5)),
      Material(
        color: Colors.transparent,
        shadowColor: Colors.black12,
        elevation: 10,
        child: IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 34 / 2,
              backgroundColor: MyColors.light,
              child: ImageIcon(
                AssetImage('assets/icons/qr_code.png'),
                size: 15,
                color: Colors.white,
              ),
            )),
      )
    ]);
  }
}
