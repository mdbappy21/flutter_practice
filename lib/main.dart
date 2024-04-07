import 'package:flutter/material.dart';

import 'Screens/HomeActivity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
        color: Colors.cyan,
        debugShowCheckedModeBanner: false,
        home: HomeActivity());
  }
}
