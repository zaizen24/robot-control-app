import 'package:http/http.dart' as http;
import '../utils/constants.dart';

class RobotController {
  final String baseUrl = BASE_URL; // BASE_URL ada di `constants.dart`

  Future<void> sendCommand(String command) async {
    final url = Uri.parse('$baseUrl/control');
    try {
      await http.post(url, body: {'command': command});
    } catch (e) {
      print("Failed to send command: $e");
    }
  }
}
