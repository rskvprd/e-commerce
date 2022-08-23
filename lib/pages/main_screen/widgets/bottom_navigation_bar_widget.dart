
import 'package:flutter/material.dart';
import 'package:phone_market/utils.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  static const double _iconSize = 18;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: MyColors.dark,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: currentIndex,
        backgroundColor: Colors.transparent,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          _buildBottomNavigationBarItem(
              const ImageIcon(
                AssetImage('assets/icons/find.png'),
                size: _iconSize,
              ),
              'Explore'),
          _buildBottomNavigationBarItem(
              const ImageIcon(
                AssetImage('assets/icons/bag.png'),
                size: _iconSize,
              ),
              'Bag'),
          _buildBottomNavigationBarItem(
              const ImageIcon(
                AssetImage('assets/icons/favorites.png'),
                size: _iconSize,
              ),
              'Favorites'),
          _buildBottomNavigationBarItem(
              const ImageIcon(
                AssetImage('assets/icons/person.png'),
                size: _iconSize,
              ),
              'Profile'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      Widget icon, String label) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: icon,
        ),
        label: label,
        activeIcon: ActiveIcon(label),
        backgroundColor: Colors.transparent);
  }
}

class ActiveIcon extends StatelessWidget {
  final String label;

  const ActiveIcon(this.label, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/circle_filled.png',
              height: 8,
            ),
            const Padding(padding: EdgeInsets.only(right: 7)),
            Text(
              label,
              style: const TextStyle(
                  color: Colors.white, fontFamily: 'MarkPro', fontSize: 15),
            )
          ]),
    );
  }
}
