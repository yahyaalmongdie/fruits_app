import 'package:flutter/material.dart';
import 'package:fruits_app/core/widgets/custom_text_form_field.dart';
import 'package:fruits_app/generated/l10n.dart';

class PasswordFiled extends StatefulWidget {
  const PasswordFiled({
    super.key,
    this.onSaved,
  });

  final Function(String?)? onSaved;

  @override
  State<PasswordFiled> createState() => _PasswordFiledState();
}

class _PasswordFiledState extends State<PasswordFiled> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xffC9CECF),
              )
            : const Icon(
                Icons.visibility_off,
                color: Color(0xffC9CECF),
              ),
      ),
      textInputType: TextInputType.visiblePassword,
      hintText: S.of(context).password,
    );
  }
}
