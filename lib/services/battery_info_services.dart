import 'package:battery_info/battery_info_plugin.dart';

class BatteryInfoServices {
  Future<String> batteryHealth() async {
    var androidBateryInfo = await BatteryInfoPlugin().androidBatteryInfo;

    return androidBateryInfo?.health ?? '0';
  }

  Future<int> batteryLevel() async {
    var androidBateryInfo = await BatteryInfoPlugin().androidBatteryInfo;

    return androidBateryInfo?.batteryLevel ?? 0;
  }

  Future<String> batteryPluggedStatus() async {
    var androidBateryInfo = await BatteryInfoPlugin().androidBatteryInfo;

    return androidBateryInfo?.pluggedStatus ?? '0';
  }
}
