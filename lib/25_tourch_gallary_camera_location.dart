import 'package:flutter/material.dart';
class MultipleConcept extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
     var imageProvider; //null
     return Scaffold(
       appBar: AppBar(
         title: Text("Camara Gallary loc & tourch"),
       ),
       body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Location"),
            Ink.image(
              image: imageProvider ?? AssetImage('images/username.png'),
              // or: image: imageProvider ?? MemoryImage(kTransparentImage), // from transparent_image package
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              child: InkWell(onTap: () {}, child: const SizedBox()),
            )
          ],
       ),
       bottomNavigationBar: BottomNavigationBar(
           type: BottomNavigationBarType.fixed,
           onTap: (index) {
             if(index == 0)
             {
                //start tourch
             }
             else if(index == 1)
             {
                //open gallary
             }
             else if( index == 2)
             {
               //open gallary
             }
             else
             {
                //detect location
             }
           },
           items: [
         BottomNavigationBarItem(
             icon: Icon(Icons.lightbulb),
             label: "Tourch"),
         BottomNavigationBarItem(
             icon: Icon(Icons.insert_emoticon),
         label: "Gallary"),
         BottomNavigationBarItem(
                 icon: Icon(Icons.camera_alt_rounded),
                 label: "Camera"),
         BottomNavigationBarItem(
                 icon: Icon(Icons.pin_drop),
                 label: "Location"),
       ]),
     );
  }
}