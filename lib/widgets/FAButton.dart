import 'package:flutter/material.dart';
import 'snackBar.dart';

class FAButton extends StatelessWidget {
    const FAButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: FloatingActionButton(
            elevation: 10,
            child: Icon(Icons.restore),
            onPressed: (){snackBar.mySnackBar("This is Floating Action Button 1", context);},
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black,
          ),
        ),
        Expanded(child: Container()),
        FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.ac_unit),
          onPressed: (){snackBar.mySnackBar("This is Floating Action 2", context);},
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
        ),
      ],
    );
  }
}
