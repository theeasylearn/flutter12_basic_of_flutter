import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  int count = 0; //instance variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example of buttons"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                  //code in this button will execute when we click on button
                 count = count + 1; //1
                 print("count = $count"); //1
              }, child:
              Text("click me!")),
              SizedBox(height: 10,),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.blueAccent,
                onPressed: (){
                  //display toast message
                },
                child: Text("Click me to display toast message"),
              )
            ],
        ),
      ),
    );
  }
}
