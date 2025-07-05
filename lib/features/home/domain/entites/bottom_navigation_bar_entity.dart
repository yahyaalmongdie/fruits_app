import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:flutter_gen/gen_l10n/s.dart';

class BottomNavigationBarEntity {
  final String inActiveImage, activeImage;
  final String name;

  BottomNavigationBarEntity(
      {required this.inActiveImage,
      required this.activeImage,
      required this.name});
}

List<BottomNavigationBarEntity> bottomNavigationBarItems({required BuildContext context}) {
  return [
    BottomNavigationBarEntity(
        activeImage: Assets.imagesHomeIconsBoldHome,
        inActiveImage: Assets.imagesHomeIconsOutlineHome,
        name: S.of(context)!.home),
    BottomNavigationBarEntity(
        activeImage: Assets.imagesHomeIconsBoldProducts,
        inActiveImage: Assets.imagesHomeIconsOutlineProducts,
        name: S.of(context)!.products),
    BottomNavigationBarEntity(
        activeImage: Assets.imagesHomeIconsBoldShoppingCart,
        inActiveImage: Assets.imagesHomeIconsOutlineShoppingCart,
        name: S.of(context)!.shopping_cart),
    BottomNavigationBarEntity(
        activeImage: Assets.imagesHomeIconsBoldUser,
        inActiveImage: Assets.imagesHomeIconsOutlineUser,
        name: S.of(context)!.my_account),
  ];
}
