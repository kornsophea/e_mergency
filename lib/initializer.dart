part of 'main.dart';

class _Initializer {
  static Future<void> load() async {
    // core
    await EasyLocalization.ensureInitialized();
    await M3Color.initialize();
    await Global.instance._initiailize();

    // ui
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    await ThemeProvider.instance.initialize();

    if (!kIsWeb) await setMinWindowSize();

    // license
    LicenseRegistry.addLicense(() async* {
      // final licenseA = await rootBundle.loadString('PATH-TO-LICENSEt');
      // yield LicenseEntryWithLineBreaks(['License-Name'], licenseA);
    });

    // debug
    // FlutterError.onError = (details) => DebugErrorException.run(details);
  }

  static Future<void> setMinWindowSize() async {
    if (Platform.isFuchsia || Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
      await DesktopWindow.setMinWindowSize(const Size(320, 510));
    }
  }

  Future<void> setWindowMinSize() async {
    if (Platform.isFuchsia || Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
      await DesktopWindow.setMinWindowSize(const Size(320, 510));
    }
  }
}
