import 'dart:io';
import 'package:desktop_window/desktop_window.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mvvm_boilerplate/app.dart';
import 'package:flutter_mvvm_boilerplate/provider_scope.dart';
import 'package:flutter_mvvm_boilerplate/providers/theme_provider.dart';
import 'package:flutter_mvvm_boilerplate/core/constants/app_constant.dart';
import 'package:flutter_mvvm_boilerplate/theme/m3/m3_color.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'global.dart';
part 'initializer.dart';
part 'app_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _Initializer.load();

  runApp(
    Phoenix(
      child: const AppLocalization(
        child: ProviderScope(
          child: App(),
        ),
      ),
    ),
  );
}
