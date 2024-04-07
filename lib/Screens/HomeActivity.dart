import 'package:flutter/material.dart';
import '../widgets/snackBar.dart';

class HomeActivity extends StatelessWidget{
  snackBar snackMassage=snackBar();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Ostad Practice"),
        titleSpacing:0,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){snackMassage.mySnackBar("Search Successfully done",context,duration: 500);}, icon: Icon(Icons.search_rounded))
        ],

      ),

      body: const Center(
        child: Text("Hello Everyone\nWelcome to my new Journy"),
      ),
    // drawer: (),
    // endDrawer: (),
    // bottomNavigationBar: (),
    // floatingActionButton: (),


    );
  }
}