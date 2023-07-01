import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/services/battery_info_services.dart';

var batteryInfoServices = BatteryInfoServices();

final batteryHealthProvider = FutureProvider<String>((ref) {
  return batteryInfoServices.batteryHealth();
});
final batteryLevelProvider = FutureProvider<int>((ref) {
  return batteryInfoServices.batteryLevel();
});

final batteryPluggedStatusProvider = FutureProvider<String>((ref) {
  return batteryInfoServices.batteryPluggedStatus();
});
