import 'package:flutter/material.dart';
class StackDemo1 extends StatelessWidget {
  List number = [10,20,30];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
           child: Stack(
             alignment: Alignment.center,
             children: [
                getContainer(400, 400, Colors.red),
                getContainer(300,300, Colors.blue),
                getContainer(200,200, Colors.green),
                getContainer(100,100, Colors.yellow),
                FlutterLogo(size: 150,)
             ],
           ),
        ),
    );
  }

  Widget getContainer(double h, double w, MaterialColor bgColor) {
      return Container(
          height: h,
          width: w,
          color: bgColor,
      );
  }
}
