import 'package:flutter/material.dart';
import 'package:flutter_practice/Screens/SecondScreen.dart';
import 'package:flutter_practice/widgets/AppDrawer.dart';
import 'package:flutter_practice/widgets/newScreenNevigation.dart';
import 'package:flutter_practice/widgets/snackBar.dart';
import '../widgets/FAButton.dart';
import '../widgets/appBar.dart';
import '../widgets/snackBar.dart';
import '../widgets/bottomNavigationBar.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: appBar(title: 'Ostad Practice',),
        floatingActionButton: const FAButton(),
        bottomNavigationBar: bottomNavigationBar(),
        drawer: AppDrawer(),
        endDrawer: AppDrawer(),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Hello Everyone."),
                  Text("Welcome To my first application."),
                  // Text(
                  //   "Hello Everyone .\nWelcome to my new Journey.",
                  //   textAlign: TextAlign.center,
                  //   maxLines: 2,
                  //   style: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w700,
                  //       overflow: TextOverflow.ellipsis),
                  // ),
                ],
              ),
             const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("This application for "),
                  Text("Practice purpose."),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Hi ,"),
                      Text("their "),
                      Text("I am Bappy "),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      newScreenNevigation.navigateToNextScreen(context,SecondScreen());
                    },
                    child: const Text('Next Screen'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
