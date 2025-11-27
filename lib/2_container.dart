import 'package:flutter/material.dart';
class MyContainer extends StatelessWidget
{
    @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Center(
            child: Container(
              height: 100,
              width: 400,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Container(
                height: 80,
                width: 250,
                color: Colors.brown,
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  "THE EASYLEARN",
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                   fontStyle: FontStyle.italic,
                   decoration: TextDecoration.underline
                  ),
                ),
              ),
            ),
        ),
      );
  }
}