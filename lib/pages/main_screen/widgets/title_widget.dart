import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const TitleWidget({Key? key, required this.title, required this.subtitle, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
       Text(
        title,
        style: const TextStyle(
            fontFamily: 'MarkPro',
            fontWeight: FontWeight.w800,
            fontSize: 25),
      ),
      TextButton(
          onPressed: onTap,
          child: Text(
            subtitle,
            style: const TextStyle(
                color: MyColors.light, fontFamily: 'MarkPro', fontSize: 15, fontWeight: FontWeight.w400),
          ))
    ]);
  }
}
