import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/s.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Text(S.of(context)!.or,
            style: AppTextStyles.semiBold16(context: context)),
        const SizedBox(
          width: 18,
        ),
        const Expanded(
          child: Divider(
            color: Color(0xffDDDFDF),
          ),
        ),
      ],
    );
  }
}
