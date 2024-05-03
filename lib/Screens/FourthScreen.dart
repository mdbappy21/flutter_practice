import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appBar.dart';
import '../widgets/newScreenNevigation.dart';
import 'FifthScreen.dart';

class FourthScreen extends StatelessWidget {
  List<String> StudentName = [
    "Bappy",
    "Akash",
    "Shuvo",
    "Abdullah",
    "Sabbir",
    "Auntu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        appBar: appBar(
          title: "List View",
        ),
        body: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 20,
                  thickness: 2,
                  indent: 16,
                  endIndent: 16,
                  color: Colors.amber,
                );
              },
              itemCount: StudentName.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      "${StudentName[index]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black
              ),
              onPressed: () {
                newScreenNevigation.navigateToNextScreen(
                    context, FifthScreen());
              },
              child: const Text('Next Screen Grid View'),
            ),
          ],
        ));
  }
}
// body: ListView.builder(
//   itemCount: StudentName.length,
//   itemBuilder: (BuildContext context, int index) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Text(
//             textAlign: TextAlign.center,
//             "${StudentName[index]}",
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
//           ),
//           Divider()
//         ],
//       ),
//     );
//   },
//   // children: const [
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //   // Text("Hello"),
//   //
//   // ],
// ),
