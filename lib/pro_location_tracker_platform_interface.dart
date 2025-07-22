import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pro_location_tracker_method_channel.dart';

abstract class ProLocationTrackerPlatform extends PlatformInterface {
  /// Constructs a ProLocationTrackerPlatform.
  ProLocationTrackerPlatform() : super(token: _token);

  static final Object _token = Object();

  static ProLocationTrackerPlatform _instance = MethodChannelProLocationTracker();

  /// The default instance of [ProLocationTrackerPlatform] to use.
  ///
  /// Defaults to [MethodChannelProLocationTracker].
  static ProLocationTrackerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ProLocationTrackerPlatform] when
  /// they register themselves.
  static set instance(ProLocationTrackerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
