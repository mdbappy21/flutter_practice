import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appBar.dart';

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
      body: ListView.builder(
        itemCount: StudentName.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.center,
              "${StudentName[index]}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
          );
        },
        // children: const [
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //   // Text("Hello"),
        //
        // ],
      ),
    );
  }
}
