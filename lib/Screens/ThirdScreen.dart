import 'package:flutter/material.dart';
import '../widgets/newScreenNevigation.dart';
import '../widgets/appBar.dart';
import 'FourthScreen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'This is for TextField,Container'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.orange,
                  ),
                  maxLength: 15,
                  decoration: InputDecoration(
                      hintText: "Hello This is Text Field",
                      hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                      labelText: "For Testing purpose",
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 4),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 4, color: Colors.teal),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 4, color: Colors.black),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: Icon(Icons.remove_red_eye))),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.orange,
                ),
                maxLength: 15,
                decoration: InputDecoration(
                    hintText: "Hello This is Text Field",
                    hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                    labelText: "For Testing purpose",
                    labelStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.teal),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4, color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "This is Container",
                    style: TextStyle(color: Colors.lightGreenAccent),
                  ),
                  width: 180,
                  height: 180,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      // border:const Border(
                      //   top: BorderSide(color: Colors.black,width: 2),
                      //   left: BorderSide(color: Colors.black,width: 2),
                      //   right: BorderSide(color: Colors.black,width: 2),
                      //   bottom: BorderSide(color: Colors.black,width: 2),
                      // )
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
                Container(
                  child: Text(
                    "This is Container",
                    style: TextStyle(color: Colors.lightGreenAccent),
                  ),
                  width: 180,
                  height: 180,
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      // border:const Border(
                      //   top: BorderSide(color: Colors.black,width: 2),
                      //   left: BorderSide(color: Colors.black,width: 2),
                      //   right: BorderSide(color: Colors.black,width: 2),
                      //   bottom: BorderSide(color: Colors.black,width: 2),
                      // )
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg"),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    newScreenNevigation.navigateToNextScreen(
                        context, FourthScreen());
                  },
                  child: const Text('Next Screen Text Field'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
