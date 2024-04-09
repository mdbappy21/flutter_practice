import 'package:flutter/material.dart';
import '../widgets/snackBar.dart';

class HomeActivity extends StatelessWidget {
  snackBar snackMassage = snackBar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ostad Practice"),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                snackMassage.mySnackBar("Search Successfully done", context,
                    duration: 500);
              },
              icon: Icon(Icons.search_rounded))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.ac_unit),
        onPressed: () {
          snackMassage.mySnackBar("This is Floting Action Button", context,
              duration: 1000);
        },
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.email_rounded), label: "Email"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        onTap: (int index) {
          if (index == 0) {
            snackMassage.mySnackBar("Home bottom menu", context);
          }
          if (index == 1) {
            snackMassage.mySnackBar("Email bottom menu", context);
          }
          if (index == 2) {
            snackMassage.mySnackBar("Profile bottom menu", context);
          }
        },
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
             padding: EdgeInsets.all(0),
                 child:  UserAccountsDrawerHeader(
                     accountName: Text("Md Bappy",style: TextStyle(color: Colors.cyanAccent),),
                     accountEmail: Text("mdbappy1350@gmail.com",style: TextStyle(color: Colors.cyanAccent),),
                     decoration: BoxDecoration(color: Colors.blueGrey),
                     currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://shorturl.at/chikV"),
                ))
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                snackMassage.mySnackBar("This is home", context,duration: 2000);
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.person),
              onTap: (){
                snackMassage.mySnackBar("This is contact", context,duration: 2000);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: (){
                snackMassage.mySnackBar("This is email", context,duration: 2000);
              },
            ),
            ListTile(
              title: Text("Phone"),
              leading: Icon(Icons.phone),
              onTap: (){
                snackMassage.mySnackBar("This is Phone", context,duration: 2000);
              },
            ),
          ],
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.all(0),
                child:  UserAccountsDrawerHeader(
                    accountName: Text("Md Bappy",style: TextStyle(color: Colors.cyanAccent),),
                    accountEmail: Text("mdbappy1350@gmail.com",style: TextStyle(color: Colors.cyanAccent),),
                    decoration: BoxDecoration(color: Colors.blueGrey),
                    currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://shorturl.at/chikV"),
                    ))
            ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){
                snackMassage.mySnackBar("This is home", context,duration: 2000);
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.person),
              onTap: (){
                snackMassage.mySnackBar("This is contact", context,duration: 2000);
              },
            ),
            ListTile(
              title: Text("Email"),
              leading: Icon(Icons.email),
              onTap: (){
                snackMassage.mySnackBar("This is email", context,duration: 2000);
              },
            ),
            ListTile(
              title: Text("Phone"),
              leading: Icon(Icons.phone),
              onTap: (){
                snackMassage.mySnackBar("This is Phone", context,duration: 2000);
              },
            ),
          ],
        ),
      ),

      body: const Center(
        child: Text("Hello Everyone\nWelcome to my new Journy"),
      ),


    );
  }
}
