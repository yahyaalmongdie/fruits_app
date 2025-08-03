import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/build_appbar.dart';
import 'package:fruits_app/features/best_selling_fruit/presentation/view/widget/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});

  static const String routeName = "best_selling";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context: context, title: "الأكثر مبيعًا"),
      body: const BestSellingViewBody(),
    );
  }
}
