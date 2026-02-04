import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:torch_light/torch_light.dart';
import 'package:location/location.dart';

class MultipleConcept extends StatefulWidget {
  const MultipleConcept({super.key});

  @override
  State<MultipleConcept> createState() => _MultipleConceptState();
}

class _MultipleConceptState extends State<MultipleConcept> {
  bool isTorchOn = false;
  final Location location = Location();

  LocationData? _locationData;
  PermissionStatus _permissionGranted = PermissionStatus.denied;
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedImage; // Modern way (recommended)
  // Optional: you can call this in initState if you want to check permission early
  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
      );

      if (image != null) {
        setState(() {
          _pickedImage = image;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error picking image: $e')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _checkAndRequestLocationPermission(); // optional
  }

  Future<void> _checkAndRequestLocationPermission() async {
    try {
      bool serviceEnabled = await location.serviceEnabled();
      if (serviceEnabled == false)
      {
        //request location access permission to user
        serviceEnabled = await location.requestService();
        if (serviceEnabled == false)
              return; //application close
      }

      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
      }

      if (_permissionGranted == PermissionStatus.granted ||
          _permissionGranted == PermissionStatus.grantedLimited) {
        setState(() {}); // rebuild if needed
      }
    } catch (e) {
      debugPrint("Location permission error: $e");
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      // Make sure we have permission & service
      if (_permissionGranted != PermissionStatus.granted &&
          _permissionGranted != PermissionStatus.grantedLimited) {
        await _checkAndRequestLocationPermission();
        if (_permissionGranted != PermissionStatus.granted &&
            _permissionGranted != PermissionStatus.grantedLimited) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Location permission not granted")),
          );
          return;
        }
      }

      final locationData = await location.getLocation();
      setState(() {
        _locationData = locationData;
      });

      // Optional: show result
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Location: ${_locationData?.latitude?.toStringAsFixed(5)}, "
                "${_locationData?.longitude?.toStringAsFixed(5)}",
          ),
        ),
      );
    } catch (e) {
      debugPrint("Error getting location: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to get location: $e")),
      );
    }
  }

  void _toggleTorch() {
    if (isTorchOn) {
      TorchLight.disableTorch().then((_) {
        setState(() => isTorchOn = false);
      }).catchError((e) {
        debugPrint("Cannot disable torch: $e");
      });
    } else {
      TorchLight.enableTorch().then((_) {
        setState(() => isTorchOn = true);
      }).catchError((e) {
        debugPrint("Cannot enable torch: $e");
      });
    }
  }
  ImageProvider get profileImageProvider {
    if (_pickedImage != null) {
      return FileImage(File(_pickedImage!.path));
    }
    return const AssetImage('assets/images/username.png');
  }

  @override
  Widget build(BuildContext context) {
    // You can show real image later when camera/gallery is implemented

    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera Gallery Loc & Torch"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Location",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          if (_locationData != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Latitude: ${_locationData!.latitude}\n" +  "Longitude : ${_locationData!.longitude} \n" +
                    "Altitude :${_locationData!.altitude} \n" + " Accuracy : ${_locationData!.accuracy}",
                textAlign: TextAlign.center,
              ),
            ),
          Ink.image(
            image: profileImageProvider,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                // You can add preview tap action later
              },
              child: const SizedBox(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) async {
          switch (index) {
            case 0: // Torch
              _toggleTorch();
              break;

            case 1: // Gallery
              _pickImageFromGallery();
              break;

            case 2: // Camera
            // TODO: open camera (e.g. image_picker)
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Camera - not implemented yet")),
              );
              break;

            case 3: // Location
              await _getCurrentLocation();
              break;
          }
        },
        currentIndex: 0, // optional – you can manage selected index if needed
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: "Torch",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_emoticon),
            label: "Gallery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_rounded),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop),
            label: "Location",
          ),
        ],
      ),
    );
  }
}