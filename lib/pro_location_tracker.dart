
import 'pro_location_tracker_platform_interface.dart';

class ProLocationTracker {
  Future<String?> getPlatformVersion() {
    return ProLocationTrackerPlatform.instance.getPlatformVersion();
  }
}
