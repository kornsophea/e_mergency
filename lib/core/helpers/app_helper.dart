import 'dart:convert';

class AppHelper {
  AppHelper._internal();

  static T? listItem<T>(Iterable<T> list, int index) {
    if (index >= 0 && list.length > index) return list.toList()[index];
    return null;
  }

  static int? intFromDateTime({DateTime? dateTime}) {
    if (dateTime == null) return null;
    return dateTime.millisecondsSinceEpoch;
  }

  static bool? boolFromInt(int? value) {
    if (value == null) return false;
    return value == 1 ? true : false;
  }

  static int? intFromBool(bool? value) {
    if (value == null) return 0;
    return value ? 1 : 0;
  }

  static String prettifyJson(Map<dynamic, dynamic> json) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String prettyJson = encoder.convert(json);
    return prettyJson;
  }

  static String? queryParameters({
    required String url,
    required String param,
  }) {
    return Uri.parse(url).queryParameters[param];
  }
}
