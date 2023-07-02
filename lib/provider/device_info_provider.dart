import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tes_synpsis/services/device_info_services.dart';

DeviceInfoServices _deviceInfoServices = DeviceInfoServices();

final deviceInfoAndroidProvider = FutureProvider<Map<String, dynamic>>((ref) {
  return _deviceInfoServices.getDataAndroid();
});
