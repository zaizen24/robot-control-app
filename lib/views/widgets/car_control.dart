import 'package:flutter/material.dart';
import '../../controllers/robot_controller.dart';

class CarControls extends StatelessWidget {
  final RobotController controller;
  final double speed;

  CarControls({required this.controller, required this.speed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Car Controls',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        SizedBox(height: 20),
        IconButton(
          iconSize: 70,
          color: Colors.blue,
          icon: Icon(Icons.arrow_upward),
          onPressed: () => controller.sendCommand('forward:$speed'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 70,
              color: Colors.blue,
              icon: Icon(Icons.arrow_back),
              onPressed: () => controller.sendCommand('left:$speed'),
            ),
            IconButton(
              iconSize: 70,
              color: Colors.red,
              icon: Icon(Icons.stop),
              onPressed: () => controller.sendCommand('stop'),
            ),
            IconButton(
              iconSize: 70,
              color: Colors.blue,
              icon: Icon(Icons.arrow_forward),
              onPressed: () => controller.sendCommand('right:$speed'),
            ),
          ],
        ),
        IconButton(
          iconSize: 70,
          color: Colors.blue,
          icon: Icon(Icons.arrow_downward),
          onPressed: () => controller.sendCommand('backward:$speed'),
        ),
      ],
    );
  }
}
