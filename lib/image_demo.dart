import 'package:flutter/material.dart';
//create class stateless widget
class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200], // optional: to see the background
        appBar: AppBar(title: const Text('Image with Border Demo')),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
                color: Colors.yellow,
                width: 8.0,
              ),
              borderRadius: BorderRadius.circular(200), // makes it circular
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Center( // better than Align for simple centering
              child: Image.asset(
                'images/phone.png',
                width: 128,
                height: 128,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}