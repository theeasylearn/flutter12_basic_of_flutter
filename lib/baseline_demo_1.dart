import 'package:flutter/material.dart';
//create class
class BaselineDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
          child: Container(
              height: 300,
              width: 300,
              child: Baseline(baseline: 64, baselineType: TextBaseline.alphabetic,
              child: Image.asset('images/username.png',),),
              alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              image: DecorationImage(
                image: AssetImage('images/background.webp'), // supports .webp perfectly
                fit: BoxFit.cover,        // cover, contain, fill, etc.
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), // optional dark overlay
                  BlendMode.darken,
                ),
              ),
              borderRadius: BorderRadius.circular(10),
            ),

      ),
    ));
  }
}
