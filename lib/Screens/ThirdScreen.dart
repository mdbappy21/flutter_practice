import 'package:flutter/material.dart';

import '../widgets/appBar.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'This is for TextField,Container'),
      body: Column(
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
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: TextFormField(
          //       style: const TextStyle(
          //         fontSize: 24,
          //         color: Colors.orange,
          //       ),
          //       maxLength: 15,
          //       decoration: InputDecoration(
          //           hintText: "Hello This is Text Field",
          //           hintStyle: const TextStyle(fontWeight: FontWeight.w400),
          //           labelText: "For Testing purpose",
          //           labelStyle: const TextStyle(
          //             color: Colors.black,
          //             fontSize: 18,
          //           ),
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(8),
          //             borderSide: BorderSide(width: 4),
          //           ),
          //           focusedBorder: OutlineInputBorder(
          //             borderSide: BorderSide(width: 4, color: Colors.teal),
          //             borderRadius: BorderRadius.circular(16),
          //           ),
          //           enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(width: 4, color: Colors.black),
          //             borderRadius: BorderRadius.circular(25),
          //           ),
          //           fillColor: Colors.white,
          //           filled: true,
          //           suffixIcon: Icon(Icons.remove_red_eye)
          //       ),
          //   ),
          // ),
          Container(
            child: Text("This is Container"),
            width: 300,
            height: 300,

            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black,width: 2,),
              // border:const Border(
              //   top: BorderSide(color: Colors.black,width: 2),
              //   left: BorderSide(color: Colors.black,width: 2),
              //   right: BorderSide(color: Colors.black,width: 2),
              //   bottom: BorderSide(color: Colors.black,width: 2),
              // )
              image: const DecorationImage(
                image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_640.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
        ],
      ),
    );
  }
}
