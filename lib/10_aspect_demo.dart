import 'package:flutter/material.dart';
class AspectDemo1 extends StatelessWidget {
  String imgURL = "https://picsum.photos/400";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Aspect Ratio example"),),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    color: Colors.blue,
                    child: Text("IPhone 15 pro max"
                      ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                  AspectRatio(
                      aspectRatio: 1.75,
                      child: Image.network(imgURL,fit: BoxFit.cover,)),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 20),child: Text("Rs 1,25,000"),),
                        IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {  },)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
