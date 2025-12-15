
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewExample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Example of ListView "),
          ),
          body: ListView(
            children: [
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text("India - Bharat"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delhi"),
                      Text("Rupees"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png?20240827082344"),
                  ),
                  trailing: Icon(Icons.favorite),
                ),
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text("Russia"),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mosco"),
                      Text("Rubal"),
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Flag_of_Russia.svg/1200px-Flag_of_Russia.svg.png?20120812153731"),
                  ),
                  trailing: Icon(Icons.favorite),
                ),
              ),
            ],
          ) ,
        ),
    );
  }
}
