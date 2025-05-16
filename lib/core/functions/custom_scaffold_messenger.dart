import 'package:flutter/material.dart';

customScaffoldMessenger({required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}
