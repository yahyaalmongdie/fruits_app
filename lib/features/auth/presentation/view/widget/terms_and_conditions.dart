import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/auth/presentation/view/widget/custom_check_box.dart';
import 'package:fruits_app/l10n/s.dart' show S;

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChange});

  final ValueChanged<bool> onChange;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTearmsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTearmsAccepted = value;
            widget.onChange(value);
            setState(() {});
          },
          isCheck: isTearmsAccepted,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: S.of(context)!.terms_and_coniditions_1,
                style: AppTextStyles.semiBold13(context: context)
                    .copyWith(color: const Color(0xff949D9E))),
            TextSpan(
                text: ' ',
                style: AppTextStyles.semiBold13(context: context)
                    .copyWith(color: const Color(0xff949D9E))),
            TextSpan(
                text: S.of(context)!.terms_and_coniditions_2,
                style: AppTextStyles.semiBold13(context: context)
                    .copyWith(color: AppColors.lightPrimaryColor)),
          ])),
        )
      ],
    );
  }
}
