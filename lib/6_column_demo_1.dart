import 'package:flutter/material.dart';
class ColumnDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Container(color: Colors.blue,child:  Text("Line 1")),
              Container(color: Colors.blue,child:  Text("Line 2")),
              Container(color: Colors.blue,child:  Text("Line 3")),
              Container(color: Colors.blue,child:  Text("Line 4")),

          ],
        ),
    );
  }
}
