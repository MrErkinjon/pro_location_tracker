# 📍 pro_location_tracker

**A professional-grade Flutter plugin for real-time and background location tracking** — built from scratch with native Android and iOS support.

No external dependencies. Fully written in Dart + platform-native Kotlin & Swift.

---

## ✨ Features

✅ Get precise foreground location  
✅ Background tracking support (Android Foreground Service, iOS Background Modes)  
✅ Native permission handling (no 3rd party libs)  
✅ Stream-based and on-demand location APIs  
✅ Battery-optimized tracking (coming soon)  
✅ Event-based location filtering (coming soon)

---

## 🚀 Getting Started

### 1. Install the plugin

In your `pubspec.yaml`:

```yaml
dependencies:
  pro_location_tracker:
    git:
      url: https://github.com/MrErkinjon/pro_location_tracker.git
```

*(Replace with pub.dev once published)*

---

### 2. Configure permissions

#### Android

Edit your `AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
```

#### iOS

In your `ios/Runner/Info.plist`:

```xml
<key>NSLocationWhenInUseUsageDescription</key>
<string>We use your location to track movement</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>We need background access to update your location</string>
<key>UIBackgroundModes</key>
<array>
  <string>location</string>
</array>
```

---

### 3. Usage

```dart
import 'package:pro_location_tracker/pro_location_tracker.dart';

void getLocation() async {
  final location = await ProLocationTracker.getCurrentLocation();
  print("Latitude: \${location['latitude']}, Longitude: \${location['longitude']}");
}
```

📌 More APIs (stream-based, background start/stop) coming soon.

---

## 🔧 Roadmap

| Feature                    | Status    |
|---------------------------|-----------|
| Foreground location       | ✅ Done    |
| Platform channels         | ✅ Done    |
| Background tracking (Android) | 🔄 In progress |
| Background mode (iOS)     | 🔄 In progress |
| Trip session support      | 🔜 Planned |
| Geo-fence triggers        | 🔜 Planned |
| Power-optimized mode      | 🔜 Planned |

---

## 📁 Project Structure

```
lib/
├── pro_location_tracker.dart       # Dart entry
├── src/
│   ├── location_service.dart       # Main location logic
│   ├── models/                     # Location models & exceptions
android/                            # Kotlin implementation
ios/                                # Swift implementation
```

---

## 🧑‍💻 Author

**Erkinjon Developer**  
GitHub: [@MrErkinjon](https://github.com/MrErkinjon)  

---
