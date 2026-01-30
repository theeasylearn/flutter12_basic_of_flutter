import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:just_audio/just_audio.dart';
class ButtonDemo extends StatelessWidget {
  int count = 0; //instance variable
  AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example of buttons"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                  //code in this button will execute when we click on button
                 count = count + 1; //1
                 print("count = $count"); //1
              }, child:
              Text("click me!")),
              SizedBox(height: 10,),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.blueAccent,
                onPressed: (){
                  Fluttertoast.showToast(
                    msg: "Hello! Dishant, Manav & harshraj and hardik ",
                    toastLength: Toast.LENGTH_LONG,    // or Toast.LENGTH_LONG
                    gravity: ToastGravity.BOTTOM,       // BOTTOM, CENTER, TOP
                    timeInSecForIosWeb: 3,
                    backgroundColor: Colors.black,
                    textColor: Colors.white,
                    fontSize: 16.0,
                    webShowClose: true,                 // useful for web
                  );
                },
                child: Text("Click me to display toast message"),
              ),
              SizedBox(height: 10,),
              IconButton(onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Hello! This is a simple Snackbar'),
                    duration: Duration(days: 1),
                    showCloseIcon: true,
                  ),
                );
              }, icon: Icon(Icons.message)),
              SizedBox(height: 10,),
              TextButton(onPressed: ()  async {
                player.setAsset('sound/bell.mp3');              // Schemes: (https: | file: | asset: )
                player.play();
              }, child: Text("Play sound"))
            ],
        ),
      ),
    );
  }
}
