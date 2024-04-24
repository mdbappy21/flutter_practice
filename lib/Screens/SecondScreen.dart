import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/snackBar.dart';

import '../widgets/appBar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          title: 'Second Screen for Button',
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orangeAccent,
                        foregroundColor: Colors.black,
                        //padding: EdgeInsets.all(20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10),
                        //padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: const BorderSide(width: 2, color: Colors.teal),
                        ),
                        textStyle: const TextStyle(fontSize: 24)),
                    onPressed: () {
                      snackBar.mySnackBar("This is Elevated Button", context,
                          backgroundColor: Colors.teal);
                    },
                    child: const Text("Elevated Button")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      snackBar.mySnackBar("This is Text Button", context,
                          backgroundColor: Colors.orange);
                    },
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.orange,
                        textStyle: const TextStyle(
                          fontSize: 24,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                            side: const BorderSide(
                                width: 2, color: Colors.teal))),
                    child: Text("Text Button")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    snackBar.mySnackBar("This is Icon Button", context,
                        backgroundColor: Colors.teal);
                  },
                  icon: const Icon(
                    Icons.ac_unit,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){snackBar.mySnackBar("OnTap Gesture", context);},
                  onDoubleTap: (){snackBar.mySnackBar("OnDoubleTap", context,backgroundColor: Colors.black);},
                  onLongPress: (){snackBar.mySnackBar("OnLongPress", context,backgroundColor: Colors.purple);},

                  child:const Column(
                    children: [
                      Text("This For Gesture Detector\n"),
                      Icon(Icons.ac_unit)
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  splashColor: Colors.deepOrange,

                  onTap: (){snackBar.mySnackBar("OnTap Gesture", context);},
                  onDoubleTap: (){snackBar.mySnackBar("OnDoubleTap", context,backgroundColor: Colors.black);},
                  onLongPress: (){snackBar.mySnackBar("OnLongPress", context,backgroundColor: Colors.purple);},

                  child:const Column(
                    children: [
                      Text("This For InkWell\n"),
                      //Icon(Icons.ac_unit)
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
