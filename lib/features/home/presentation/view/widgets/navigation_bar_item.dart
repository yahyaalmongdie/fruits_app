import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/active_item.dart';
import 'package:fruits_app/features/home/presentation/view/widgets/inactive_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isSelected,
      required this.bottomNavigationBarEntity});
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected==true
        ? ActiveItem(image: bottomNavigationBarEntity.activeImage)
        : InActiveItem(image: bottomNavigationBarEntity.inActiveImage);
  }
}
