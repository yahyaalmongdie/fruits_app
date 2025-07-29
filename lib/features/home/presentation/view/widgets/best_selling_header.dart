import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/best_selling_fruit/presentation/view/pages/best_selling_view.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(BestSellingView.routeName);
      },
      child: Row(
        children: [
          Text(
            "الأكثر مبيعًا",
            style: AppTextStyles.bold16(context: context),
          ),
          const Spacer(),
          Text(
            " المزيد",
            style: AppTextStyles.regular13(context: context)
                .copyWith(color: const Color(0xff949D9E)),
          ),
        ],
      ),
    );
  }
}
