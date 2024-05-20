import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appBar.dart';
import 'package:flutter_practice/widgets/newScreenNevigation.dart';
import 'package:flutter_practice/Screens/SeventhScreen.dart';

class SixthScreen extends StatelessWidget{
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
    "Fahim",
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
      appBar: appBar(title: "ListView GridView"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.black),
                    onPressed: () {
                      newScreenNevigation.navigateToNextScreen(
                          context, SeventhSecreen());
                    },
                    child: const Text('Next Screen Theme'),
                  ),
                ],
              ),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
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
                        StudentName[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(StudentId[index],style: TextStyle(fontSize: 18),)
                    ],
                  );
                },
              ),
              SizedBox(height: 50,),
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
        )
    );
  }



}