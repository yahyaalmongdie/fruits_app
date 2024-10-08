import 'package:flutter/material.dart';

Future<dynamic> moveToPage({required BuildContext context}){
 return Future.delayed(Duration(seconds: 3), () {

    Navigator.pushReplacementNamed(context, '/login');
  });

}
