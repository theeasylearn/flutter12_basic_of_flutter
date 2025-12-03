import 'package:flutter/material.dart';
//create class stateless widget 
class AlignDemo extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(home: 
     Center(
       child: Container(
         height: 200,
         width: 200,
         decoration: BoxDecoration(
            color: Colors.grey,
            border: Border.all(
                color : Colors.yellow,
                width: 5.0
            ),
            boxShadow: [
             BoxShadow(
               color: Colors.black26,
               blurRadius: 10,
               offset: Offset(0, 5),
             ),
           ],
             // borderRadius: BorderRadius.circular(200)
         ),
         child: Align(
           alignment: Alignment.bottomRight,
           child:  FlutterLogo(
             size: 50,),
         )
         ,
       ),
     ),
     );
  }
  
}