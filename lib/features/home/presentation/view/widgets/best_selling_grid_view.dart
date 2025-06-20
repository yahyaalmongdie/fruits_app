import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/fruit_item.dart';

class BestSellingGridView extends StatelessWidget {
  const BestSellingGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
          crossAxisCount: 2, childAspectRatio: 163 / 214),
      itemBuilder: (context, index) {
        return const FruitItem();
      },
    );
  }
}
