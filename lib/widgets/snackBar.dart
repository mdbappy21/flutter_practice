import 'package:flutter/material.dart';

class snackBar {
  static void mySnackBar(String massage,BuildContext context,{int duration=500,Color? backgroundColor=Colors.blue}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(massage),
      duration: Duration(milliseconds: duration), // Change duration here
      backgroundColor: backgroundColor,
    ));
  }
}
