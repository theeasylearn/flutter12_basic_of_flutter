import 'package:flutter/material.dart';

class LayoutBuilderDemo extends StatelessWidget {

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
      body: LayoutBuilder(builder: (context,parent){
        return DisplayUI(parent);
      }),
    );
  }
  Widget DisplayUI(BoxConstraints parent) {
    final double appBarHeight = AppBar().preferredSize.height;
    double containerHeight = (parent.maxHeight - appBarHeight)/4;
    if(height>width)
    {
      return Column(
        children: [
          Container(
            height: containerHeight - 10,
            width: double.infinity,
            color: Colors.yellow,
          ),
          SizedBox(height: 10,),
          Container(
            height: containerHeight - 10,
            width: double.infinity,
            color: Colors.red,
          ),
          SizedBox(height: 10,),
          Container(
            height: containerHeight - 10,
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
            Expanded(flex:1,child: LayoutBuilder(builder: (context,parent) {
                return Column(
                  children: [
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.yellow,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.red,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.blue,
                    )
                  ],
                );
            })),
            Expanded(flex: 4,child:
            Padding(padding: EdgeInsets.only(left:10),
              child: LayoutBuilder(builder:(context,parent){
                return Column(
                  children: [
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.yellow,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.red,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: containerHeight,
                      width: parent.maxWidth,
                      color: Colors.blue,
                    )
                  ],
                );
            }),)),
          ],
        );
    }
  }
}