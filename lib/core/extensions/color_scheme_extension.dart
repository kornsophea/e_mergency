import 'package:flutter/material.dart';
import 'package:flutter_mvvm_boilerplate/theme/m3/m3_read_only_color.dart';

extension ColorSchemeExtension on ColorScheme {
  M3ReadOnlyColor get readOnly => M3ReadOnlyColor(this);
}
