import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:just_audio/just_audio.dart';
import 'package:vibration/vibration.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  // Initialize (call this in main() or initState)
  static Future<void> initialize() async {
    const AndroidInitializationSettings androidSettings =
    AndroidInitializationSettings('@mipmap/ic_launcher'); // or your icon

    const DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notificationsPlugin.initialize(
      initSettings,
      // Optional: onDidReceiveNotificationResponse (for tap handling)
    );
  }

  // Show a simple notification
  static Future<void> showBasicNotification({
    required int id,
    required String title,
    required String body,
  }) async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'channel_id',              // unique channel ID
      'Channel Name',            // shown in system settings
      channelDescription: 'Important notifications',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: true,
      // icon: '@drawable/ic_notification',  // optional custom icon
    );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
      // iOS/macOS settings if needed
    );

    await _notificationsPlugin.show(
      id,
      title,
      body,
      details,
      payload: 'custom_data_if_needed',
    );
  }
}

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
              }, child: Text("Play sound")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: MaterialButton(textColor: Colors.white,
                    color: Colors.brown,onPressed: () async {
                      if (await Vibration.hasVibrator() == true)
                      {
                            //device has hardware vibrator
                        //    Vibration.vibrate(duration: 1000 );//
                        Vibration.vibrate(pattern: [500, 1000, 500, 2000]);
                      }
                    },child: Text("Vibrate Phone"),)),
                  Expanded(child: MaterialButton(textColor: Colors.white,
                    color: Colors.red,onPressed: () async {
                      await NotificationService.showBasicNotification(
                        id: 0,
                        title: "New Message!",
                        body: "You have 3 unread messages",
                      );
                    },child: Text("display notification"),)),
                ],
              )
            ],
        ),
      ),
    );
  }
}
