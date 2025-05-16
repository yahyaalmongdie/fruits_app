import 'package:flutter/material.dart';

customScaffoldMessenger(
    {required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
    children: [
      const Icon(
        Icons.error,
        color: Colors.red,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(message),
    ],
  )));
}
