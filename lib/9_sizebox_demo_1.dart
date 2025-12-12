import 'package:flutter/material.dart';
class SizedBoxDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sizebox example"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    print("first button clicked.");
                  }, child: Text("First fullwidth button")),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    print("2nd  button clicked.");
                  }, child: Text("2nd fullwidth button")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Left button")),
                    ElevatedButton(onPressed: () {}, child: Text("right button")),
                  ],
                )
            ]
        ),
      ),
    );
  }
}
