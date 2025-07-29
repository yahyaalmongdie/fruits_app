import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/Navigation_bar_item.dart'
    show NavigationBarItem;

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int seletedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          shadows: [
            BoxShadow(
                color: Color(0x19000000),
                blurRadius: 25,
                offset: Offset(0, -2),
                spreadRadius: 0)
          ]),
      child: Row(
        children:
            bottomNavigationBarItems(context: context).asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: index == seletedIndex ? 3 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  seletedIndex = index;
                });
              },
              child: NavigationBarItem(
                isSelected: seletedIndex == index,
                bottomNavigationBarEntity: entity,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
