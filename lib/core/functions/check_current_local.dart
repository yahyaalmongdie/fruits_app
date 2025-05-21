import 'dart:ui' as ui;

import 'package:flutter/material.dart';

bool isLocalArabic() {
  Locale deviceLocale = ui.PlatformDispatcher.instance.locale;
  if (deviceLocale.languageCode == "ar") {
    return true;
  } else {
    return false;
  }
}
