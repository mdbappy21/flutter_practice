import 'package:flutter/material.dart';

class snackBar {
  void mySnackBar(String massage,BuildContext context,{int duration=200}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(massage),
      duration: Duration(milliseconds: duration), // Change duration here
    ));
  }
}
