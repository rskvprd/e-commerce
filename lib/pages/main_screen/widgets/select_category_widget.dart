import 'package:flutter/material.dart';
import 'package:phone_market/pages/main_screen/widgets/title_widget.dart';
import 'package:phone_market/utils.dart';

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({Key? key}) : super(key: key);
  static const List<Map<String, ImageProvider>> _categories = [
    {'Phones': AssetImage('assets/icons/phone.png')},
    {'Computers': AssetImage('assets/icons/pc.png')},
    {'Health': AssetImage('assets/icons/heart.png')},
    {'Books': AssetImage('assets/icons/books.png')},
    {'Other': AssetImage('assets/icons/phone.png')},
  ];

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
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
            itemCount: SelectCategoryWidget._categories.length,
            itemBuilder: (context, index) {
              final Map<String, ImageProvider> category =
                  SelectCategoryWidget._categories[index];
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
        Material(
          color: Colors.transparent,
          shadowColor: Colors.black12,
          elevation: 10,
          child: CircleAvatar(
            radius: 71 / 2,
            backgroundColor: isSelected ? MyColors.light : Colors.white,
            child: ImageIcon(
              icon,
              size: 30,
              color: isSelected ? Colors.white : MyColors.grey,
            ),
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
