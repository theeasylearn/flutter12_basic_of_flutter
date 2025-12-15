import 'package:flutter/material.dart';
//create stateless class
class WrapWidgetDemo extends StatelessWidget {
  String imgURL = "https://picsum.photos/200";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap Widget Demo"),
        ),
        body: Wrap(
          spacing: 8, //horizontal spacing
          runSpacing: 8, //vertical spacing
          runAlignment: WrapAlignment.spaceBetween,
          children: [
             MyContainer(),
             MyContainer(),
             MyContainer(),
             MyContainer(),
             MyContainer(),
             MyContainer(),
          ],
        ),
      ),
    );
  }
  Widget MyContainer() {
    return Container(
      height: 100,
      width: 100,
      child: AspectRatio(aspectRatio: 1,
        child: Image.network(imgURL,fit: BoxFit.cover,),
      ),
    );
  }
}
