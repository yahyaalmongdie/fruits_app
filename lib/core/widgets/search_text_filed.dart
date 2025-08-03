import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/core/utils/app_images.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/l10n/s.dart' show S;

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9.0,
            offset: Offset(0.0, 2.0),
            spreadRadius: 0,
          ),
        ]),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              suffixIcon: SizedBox(
                width: 20,
                child: Center(
                  child: SvgPicture.asset(Assets.imagesFilter),
                ),
              ),
              prefixIcon: SizedBox(
                width: 20,
                child: Center(
                  child: SvgPicture.asset(Assets.imagesSearchIcon),
                ),
              ),
              hintText: S.of(context)!.looking_for,
              hintStyle: AppTextStyles.regular13(context: context)
                  .copyWith(color: const Color(0xff949D9E)),
              filled: true,
              fillColor: Colors.white,
              border: buildInputBorder(),
              focusedBorder: buildInputBorder(),
              enabledBorder: buildInputBorder()),
        ));
  }

  OutlineInputBorder buildInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: Colors.white),
        borderRadius: BorderRadius.circular(4));
  }
}
