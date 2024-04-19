import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/AppDrawer.dart';
import '../widgets/FAButton.dart';
import '../widgets/appBar.dart';
import '../widgets/bottomNavigationBar.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: appBar(),
      floatingActionButton: const FAButton(),
      bottomNavigationBar: bottomNavigationBar(),
      drawer: AppDrawer(),
      endDrawer: AppDrawer(),
      body: const Center(
        child:Column(
          children: [

          ],
        ),
      )

      // const Center(
      //   child: Text(
      //     "Hello Everyone .\nWelcome to my new Journey.",
      //     textAlign: TextAlign.center,
      //     maxLines: 2,
      //     style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.w700,
      //         overflow: TextOverflow.ellipsis),
      //   ),
      // ),

    );
  }
}
