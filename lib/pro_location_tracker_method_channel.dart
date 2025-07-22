import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pro_location_tracker_platform_interface.dart';

/// An implementation of [ProLocationTrackerPlatform] that uses method channels.
class MethodChannelProLocationTracker extends ProLocationTrackerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pro_location_tracker');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
