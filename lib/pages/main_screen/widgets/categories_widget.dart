import 'package:flutter/material.dart';
import 'package:phone_market/pages/main_screen/widgets/title_widget.dart';
import 'package:phone_market/utils.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);
  static const List<Map<String, ImageProvider>> _categories = [
    {'Phones': AssetImage('assets/icons/phone.png')},
    {'Computers': AssetImage('assets/icons/pc.png')},
    {'Health': AssetImage('assets/icons/heart.png')},
    {'Books': AssetImage('assets/icons/books.png')},
    {'Other': AssetImage('assets/icons/phone.png')},
  ];

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleWidget(
          title: 'Select category',
          subtitle: 'view all',
          onTap: (){},
        ),
        const Padding(padding: EdgeInsets.only(bottom: 5)),
        SizedBox(
          height: 100,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: CategoriesWidget._categories.length,
            itemBuilder: (context, index) {
              final Map<String, ImageProvider> category =
                  CategoriesWidget._categories[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: _Category(
                  title: category.keys.first,
                  icon: category.values.first,
                  isSelected: index == selectedIndex,
                ),
              );
            },
            separatorBuilder: (_, __) {
              return const Padding(
                padding: EdgeInsets.only(right: 23),
              );
            },
          ),
        )
      ],
    );
  }
}

class _Category extends StatelessWidget {
  final String title;
  final ImageProvider icon;
  final bool isSelected;

  const _Category(
      {Key? key,
      required this.title,
      required this.icon,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 71 / 2,
          backgroundColor: isSelected ? MyColors.light : Colors.white,
          child: ImageIcon(
            icon,
            size: 30,
            color: isSelected ? Colors.white : MyColors.grey,
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 7)),
        Text(title,
            style: TextStyle(
                color: isSelected ? MyColors.light : MyColors.dark,
                fontFamily: 'MarkPro',
                fontWeight: FontWeight.w600))
      ],
    );
  }
}
