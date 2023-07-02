import 'package:sensors_plus/sensors_plus.dart';

class SensorServices {
  Stream<GyroscopeEvent> getGyroscope() {
    return SensorsPlatform.instance.gyroscopeEvents;
  }
}
