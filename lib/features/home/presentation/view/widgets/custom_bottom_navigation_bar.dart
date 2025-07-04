import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_app/core/utils/app_images.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

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
      child: const NavigationBarItem(
        isSelected: true,
      ),
    );
  }
}

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(image);
  }
}

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? const ActiveItem(image: Assets.imagesHomeIconsBoldHome)
        : const InActiveItem(image: Assets.imagesHomeIconsOutlineHome);
  }
}
