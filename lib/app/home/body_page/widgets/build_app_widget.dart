import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class BuildAppWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
   BuildAppWidget({super.key,required this.image,required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: DeviceFrame(
            device: Devices.android.onePlus8Pro,
            orientation: Orientation.portrait,
            screen: Image.asset(image),
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Bacasime Antique',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 20,
              //color: Colors.grey,
              //fontFamily: 'Bacasime Antique',
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
