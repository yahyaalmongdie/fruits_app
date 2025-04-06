import 'package:flutter/material.dart';
import 'package:fruits_app/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.btnText});
  final String btnText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        height: 54,
        onPressed: onPressed,
        color: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Text(
          btnText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
