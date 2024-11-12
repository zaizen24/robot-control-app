import 'package:flutter/material.dart';
import '../../controllers/robot_controller.dart';

class ArmControls extends StatelessWidget {
  final RobotController controller;
  final double speed;

  ArmControls({required this.controller, required this.speed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Arm Controls',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        ),
        SizedBox(height: 20),
        IconButton(
          iconSize: 70,
          color: Colors.green,
          icon: Icon(Icons.arrow_upward),
          onPressed: () => controller.sendCommand('arm_up:$speed'),
        ),
        IconButton(
          iconSize: 70,
          color: Colors.green,
          icon: Icon(Icons.arrow_downward),
          onPressed: () => controller.sendCommand('arm_down:$speed'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 70,
              color: Colors.green,
              icon: Icon(Icons.open_in_full),
              onPressed: () => controller.sendCommand('arm_open:$speed'),
            ),
            IconButton(
              iconSize: 70,
              color: Colors.green,
              icon: Icon(Icons.close),
              onPressed: () => controller.sendCommand('arm_close:$speed'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 70,
              color: Colors.green,
              icon: Icon(Icons.arrow_left),
              onPressed: () => controller.sendCommand('arm_left:$speed'),
            ),
            IconButton(
              iconSize: 70,
              color: Colors.green,
              icon: Icon(Icons.arrow_right),
              onPressed: () => controller.sendCommand('arm_right:$speed'),
            ),
          ],
        ),
      ],
    );
  }
}
