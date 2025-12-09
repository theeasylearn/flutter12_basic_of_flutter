import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class RowDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          color: Colors.yellow.withOpacity(0.5),
          padding: EdgeInsets.all(10),
          height: 200,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Expanded(child: Text("One")),
                Expanded(child: Text("Two")),
                Expanded(child: Text("Three")),
                Expanded(child: Text("Apple Banana")),
            ],
          ),
        ),
      ),
    );
  }
}
