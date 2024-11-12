import 'package:flutter/material.dart';
import '../controllers/robot_controller.dart';
import 'widgets/car_control.dart';
import 'widgets/arm_control.dart';

class ControlPage extends StatefulWidget {
  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  final RobotController controller = RobotController();
  double _speed = 5.0; // Kecepatan default
  bool isCarControl = true; // Awal tampilan pada CarControls

  void _updateSpeed(double value) {
    setState(() {
      _speed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Robot Control"),
        actions: [
          // Tambah tombol switch untuk berpindah antar kontrol
          Switch(
            value: isCarControl,
            onChanged: (value) {
              setState(() {
                isCarControl = value;
              });
            },
            activeColor: Colors.blue,
            inactiveThumbColor: Colors.green,
            inactiveTrackColor: Colors.green.shade200,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Slider Kecepatan untuk Car dan Arm
          Text(
            'Speed: ${_speed.toInt()}',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Slider(
            min: 0,
            max: 10,
            divisions: 10,
            label: _speed.toInt().toString(),
            value: _speed,
            activeColor: Colors.blue,
            onChanged: _updateSpeed,
          ),
          Expanded(
            child: Center(
              // Menampilkan CarControls atau ArmControls sesuai switch
              child: isCarControl
                  ? CarControls(controller: controller, speed: _speed)
                  : ArmControls(controller: controller, speed: _speed),
            ),
          ),
        ],
      ),
    );
  }
}
