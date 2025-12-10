import 'package:flutter/material.dart';
class Expanddemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken)),
              Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Click me")))
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.traffic_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text("first button"),),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text("second"),),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.traffic_sharp)),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              Expanded(
                flex: 2,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.orange,
                  child: Text("first button"),),
              ),
              SizedBox(width: 10,),
              Expanded(
                flex: 4,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text("second"),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
