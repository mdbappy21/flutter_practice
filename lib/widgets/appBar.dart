import 'package:flutter/material.dart';
import 'snackBar.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  appBar({required this.title});

  @override
  Widget build(BuildContext context) {
   return AppBar(
     title: Text(title),
     titleSpacing: 0,
     centerTitle: true,
     toolbarHeight: 60,
     toolbarOpacity: 1,
     elevation: 6,
     backgroundColor: Colors.teal,
     foregroundColor: Colors.black,
     actions: [
       IconButton(
           onPressed: () {
             showAboutDialog(context: context);//about dialog
           },
           icon: const Icon(Icons.details))
     ],
   );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}