import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:tes_synpsis/services/sensor_services.dart';

final sensorProvider = StreamProvider<GyroscopeEvent>((ref) {
  var sensorServices = SensorServices();
  return sensorServices.getGyroscope();
});

var dx = 180.0;
var dy = 350.0;

final dyProvider = FutureProvider<double>((ref) {
  var x = ref.watch(sensorProvider).asData!.value.x;

  dy = (dy + (x * 10));

  return dy;
});

final dxProvider = FutureProvider<double>((ref) {
  var y = ref.watch(sensorProvider).asData!.value.y;
  dx = (dx + (y * 10));
  return dx;
});
