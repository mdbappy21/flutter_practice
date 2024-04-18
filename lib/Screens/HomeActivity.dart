import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/AppDrawer.dart';
import '../widgets/FAButton.dart';
import '../widgets/appBar.dart';
import '../widgets/bottomNavigationBar.dart';

class HomeActivity extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      floatingActionButton: const FAButton(),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: AppDrawer(),
      endDrawer: AppDrawer(),
      body: const Center(
        child: Text("Hello Everyone\nWelcome to my new Journy"),
      ),
    );
  }
}
