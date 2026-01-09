import 'package:flutter/material.dart';
class MediaQuery1 extends StatelessWidget {

  //get the size of the screen on which app is running
  double height=0,width=0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive design"),
      ),
      body: DisplayUI(),
    );
  }
  Widget DisplayUI() {
    double containerHeight = (height / 4) - 22;
    if(height>width)
    {
      return Column(
        children: [
          Container(
            height: containerHeight,
            width: double.infinity,
            color: Colors.yellow,
          ),
          SizedBox(height: 10,),
          Container(
            height: containerHeight,
            width: double.infinity,
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          Container(
            height: containerHeight,
            width: double.infinity,
            color: Colors.green,
          ),
          SizedBox(height: 10,),
          Container(
            height: containerHeight,
            width: double.infinity,
            color: Colors.blue,
          )
        ],
      );
    }
    else
    {
        print("it is landscape screen");
        return
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: Column(
              children: [
              Container(
              height: containerHeight,
                width: width * 0.20,
                color: Colors.yellow,
              ),
              SizedBox(height: 10,),
              Container(
                height: containerHeight,
                width: width * 0.20,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: containerHeight,
                width: width * 0.20,
                color: Colors.green,
              ),
              SizedBox(height: 10,),
              Container(
                height: containerHeight,
                width: width * 0.20,
                color: Colors.blue,
              )
            ],
          ),flex: 1,),
              Expanded(child:
                Column(
                children: [
                Container(
                height: containerHeight,
                width: width * 0.78,
                color: Colors.yellow,
              ),
              SizedBox(height: 10,),
              Container(
                height: containerHeight,
                width: width * 0.78,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: containerHeight,
                width: width * 0.78,
                color: Colors.green,
              ),
              SizedBox(height: 10,),
              Container(
                height: containerHeight,
                width: width * 0.78,
                color: Colors.blue,
              )
            ],
          ),flex: 4,),
            ],
          );
    }
  }
}