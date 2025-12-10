import 'package:flutter/material.dart';
class CardDemo1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Card example"),),
        body: Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Card.filled(
                  color: Colors.brown,
                  elevation: 10,
                  child: Column(
                    children: [
                      Text("Flutter",
                      style: TextStyle(
                        fontSize: 36, color: Colors.white
                      ),),
                      Text("Learn cross platform mobile app development",
                      style: TextStyle(
                          fontSize: 18, color: Colors.white
                      ),)
                    ],
                  )
                )),
                SizedBox(height: 10,),
                Expanded(child: Card(
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("AI/ML/DS",
                      style: TextStyle(
                        fontSize: 36,
                      ),),
                      Text("Be Machine Engineer & Data Scientist",
                      style: TextStyle(
                          fontSize: 18
                      ),)
                    ],
                  )
                )),
                SizedBox(height: 10,),
                Expanded(child: Card.outlined(
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Cyber Security",
                      style: TextStyle(
                        fontSize: 36,
                      ),),
                      Text("Be cyber Security experts",
                      style: TextStyle(
                          fontSize: 18
                      ),)
                    ],
                  )
                )),
              ],
          ),
        ),
      ),
    );
  }
}
