import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart'; // for kIsWeb

class DeviceUtils {
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  Future<String?> getDeviceId() async {
    String? deviceId;

    if (kIsWeb) {
      // التعامل مع الويب
      deviceId = await _getWebDeviceId();
    } else if (Platform.isAndroid) {
      // التعامل مع Android
      deviceId = await _getAndroidDeviceId();
    } else if (Platform.isIOS) {
      // التعامل مع iOS
      deviceId = await _getIosDeviceId();
    } else if (Platform.isWindows) {
      // التعامل مع Windows
      deviceId = await _getWindowsDeviceId();
    }

    return deviceId;
  }

  // لجلب رقم الجهاز على Android
  Future<String?> _getAndroidDeviceId() async {
    try {
      final androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id; // جهاز Android ID
    } catch (e) {
      print("Error fetching Android device ID: $e");
      return null;
    }
  }

  // لجلب رقم الجهاز على iOS
  Future<String?> _getIosDeviceId() async {
    try {
      final iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor; // معرف جهاز iOS
    } catch (e) {
      print("Error fetching iOS device ID: $e");
      return null;
    }
  }

  // لجلب رقم الجهاز على Web
  Future<String?> _getWebDeviceId() async {
    try {
      // بما أن Web لا يدعم بشكل كامل معرف الجهاز، يمكن استخدام معرف فريد للجهاز
      return DateTime.now().millisecondsSinceEpoch.toString();
    } catch (e) {
      print("Error fetching Web device ID: $e");
      return null;
    }
  }

  // لجلب رقم الجهاز على Windows
  Future<String?> _getWindowsDeviceId() async {
    try {
      final windowsInfo = await deviceInfo.windowsInfo;
      return windowsInfo.deviceId; // معرف جهاز Windows
    } catch (e) {
      print("Error fetching Windows device ID: $e");
      return null;
    }
  }
}
