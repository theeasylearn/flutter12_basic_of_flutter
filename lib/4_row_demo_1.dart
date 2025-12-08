import 'package:flutter/material.dart';

class RowDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          color: Colors.grey.withOpacity(0.5),
          padding: EdgeInsets.all(10),
          height: 200,
          child: Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
                FlutterLogo(size: 48,),
                FlutterLogo(size: 48,),
                FlutterLogo(size: 48,),
                FlutterLogo(size: 48,),
             ],
          ),
        ),
      ),
    );
  }
}
