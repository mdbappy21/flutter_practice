import 'package:flutter/material.dart';
import 'snackBar.dart';

class bottomNavigationBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.teal,
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.email_rounded), label: "Email"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
      ],
      selectedItemColor: Colors.black54,
      unselectedItemColor: Colors.black,
      onTap: (int index) {
        if (index == 0) {
          snackBar.mySnackBar("Home bottom menu", context);
        }
        if (index == 1) {
          snackBar.mySnackBar("Email bottom menu", context);
        }
        if (index == 2) {
          snackBar.mySnackBar("Profile bottom menu", context);
        }
      },
    );
  }
}