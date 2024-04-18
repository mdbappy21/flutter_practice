import 'package:flutter/material.dart';
import 'snackBar.dart';

class AppDrawer extends StatelessWidget {
   AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              snackBar.mySnackBar("This is home", context,duration: 2000);
            },
          ),
          ListTile(
            title: Text("Contact"),
            leading: Icon(Icons.person),
            onTap: (){
              snackBar.mySnackBar("This is contact", context,duration: 2000);
            },
          ),
          ListTile(
            title: Text("Email"),
            leading: Icon(Icons.email),
            onTap: (){
              snackBar.mySnackBar("This is email", context,duration: 2000);
            },
          ),
          ListTile(
            title: Text("Phone"),
            leading: Icon(Icons.phone),
            onTap: (){
              snackBar.mySnackBar("This is Phone", context,duration: 2000);
            },
          ),
        ],
      ),
    );
  }
}
