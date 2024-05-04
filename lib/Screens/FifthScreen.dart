import '../widgets/newScreenNevigation.dart';
import 'package:flutter/material.dart';

import '../widgets/appBar.dart';
import 'SixthScreen.dart';

class FifthScreen extends StatelessWidget {
  List<String> StudentName = [
    "Bappy",
    "Akash",
    "Shuvo",
    "Abdullah",
    "Sabbir",
    "Auntu",
    "Raihan",
    "Bornil",
    "Shovon",
    "Fahim"
  ];
  List<String> StudentId = [
    "221-15-5656",
    "221-15-5688",
    "221-15-5281",
    "221-15-5658",
    "221-15-5871",
    "221-15-4672",
    "221-15-4827",
    "221-15-4827",
    "221-15-4827",
    "221-15-4827",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: appBar(
        title: "Grid View",
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.black),
                  onPressed: () {
                    newScreenNevigation.navigateToNextScreen(
                        context, SixthScreen());
                  },
                  child: const Text('Next Screen List view Grid view'),
                ),
              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                childAspectRatio: 1,
                //mainAxisExtent: 50
              ),
              itemCount: StudentName.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Name : ${StudentName[index]}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "ID : ${StudentId[index]}",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
