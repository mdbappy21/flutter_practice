import 'package:flutter/material.dart';
import 'snackBar.dart';

class appBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
   return AppBar(
     title: Text("Ostad Practice"),
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
             snackBar.mySnackBar("Search Successfully done", context,
                 duration: 500);
           },
           icon: Icon(Icons.search_rounded))
     ],
   );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(70);
}