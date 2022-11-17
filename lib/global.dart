part of 'main.dart';

class Global {
  Global._();
  static final Global instance = Global._();

  // GLOBAL VAR
  PackageInfo? _platform;

  Future<void> _initiailize() async {
    _platform = await PackageInfo.fromPlatform();
    return;
  }

  // ACCESSIBLE
  bool get unitTesting => Platform.environment.containsKey('FLUTTER_TEST');
  PackageInfo get platform {
    if (unitTesting) return _testingPlatform;
    if (_platform == null) throw ErrorSummary('Required initialize [Global] in main()');
    return _platform!;
  }

  PackageInfo get _testingPlatform =>
      PackageInfo(appName: 'unit-test', packageName: 'test.unit.com', version: '1.0.0', buildNumber: '1');
}
