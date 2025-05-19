import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.textInputType, this.onSaved,  this.obscureText=false});
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final Function(String?)? onSaved;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText ,
      onSaved: onSaved,
      validator: (value) {
        if (value!.isEmpty) {
          return "هذا الحقل مطلوب";
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: AppTextStyles.bold13(context: context)
              .copyWith(color: const Color(0xff949D9E)),
          filled: true,
          fillColor: const Color(0xffF9FAFA),
          border: buildInputBorder(),
          focusedBorder: buildInputBorder(),
          enabledBorder: buildInputBorder()),
    );
  }

  OutlineInputBorder buildInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(width: 1, color: Color(0xffE6E9EA)),
        borderRadius: BorderRadius.circular(4));
  }
}
