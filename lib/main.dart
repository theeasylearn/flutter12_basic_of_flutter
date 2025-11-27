import 'package:flutter/material.dart';

void main() {
  //pass object into run app method
  App myApp = new App();
  runApp(myApp);
}
//create class
class App extends StatelessWidget
{
    @override
  Widget build(BuildContext context) {
     return MaterialApp(
       home: Center(
          child: Container(
              height: 100,
              width: 200,
              color: Colors.yellow,
              child: Text(
                  "the easylearn academy",
                  style: TextStyle(
                    color:Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
              ),
          ),
       ),
     );
  }
}