import 'package:basics_of_flutter/1_center_container_text.dart';
import 'package:flutter/material.dart';

class TableDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Table demo"),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            child: Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FractionColumnWidth(0.5),
                1: FractionColumnWidth(0.25),
                2: FractionColumnWidth(0.25),
              },
              children: [
                TableRow(children: [
                  Text("Course Name"),
                  Text("Duration"),
                  Text("Fees"),
                ]),
                TableRow(children: [
                  Text("Flutter"),
                  Text("6 months"),
                  Text("25000"),
                ]),
                TableRow(children: [
                  Text("MERN Stack"),
                  Text("6 Months"),
                  Text("25000"),
                ]),
                TableRow(children: [
                  Text("AI/ML/DS"),
                  Text("10 Months"),
                  Text("40000"),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
