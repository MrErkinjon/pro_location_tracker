import 'package:flutter_test/flutter_test.dart';
import 'package:pro_location_tracker/pro_location_tracker.dart';
import 'package:pro_location_tracker/pro_location_tracker_platform_interface.dart';
import 'package:pro_location_tracker/pro_location_tracker_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockProLocationTrackerPlatform
    with MockPlatformInterfaceMixin
    implements ProLocationTrackerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ProLocationTrackerPlatform initialPlatform = ProLocationTrackerPlatform.instance;

  test('$MethodChannelProLocationTracker is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelProLocationTracker>());
  });

  test('getPlatformVersion', () async {
    ProLocationTracker proLocationTrackerPlugin = ProLocationTracker();
    MockProLocationTrackerPlatform fakePlatform = MockProLocationTrackerPlatform();
    ProLocationTrackerPlatform.instance = fakePlatform;

    expect(await proLocationTrackerPlugin.getPlatformVersion(), '42');
  });
}
