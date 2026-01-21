import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliverDemo2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            slivers: [
              SliverGrid(

                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      childAspectRatio: 2.0
                  ),
                  delegate:
                  SliverChildBuilderDelegate((context, index){
                      return Card(
                          elevation: 10,
                          child: Column(
                             children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text("Gujarat Titans"
                                    , style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  color: Colors.blueAccent,
                                ),
                                SvgPicture.network('https://upload.wikimedia.org/wikipedia/commons/8/8a/New_York_Yankees_logo.svg'),
                                Container(
                                 padding: EdgeInsets.all(10),
                                 child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        Text("India"),
                                        Text("125 Crore")
                                    ],
                                 ),
                                 color: Colors.blueAccent,
                               ),
                             ],
                          ),
                      );
                  },
                      childCount: 10
                  ),
              )
            ],
        ),
    );
  }
}
