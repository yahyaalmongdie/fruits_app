// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `تخط`
  String get skip {
    return Intl.message(
      'تخط',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Fruit`
  String get fruit {
    return Intl.message(
      'Fruit',
      name: 'fruit',
      desc: '',
      args: [],
    );
  }

  /// `HUB`
  String get HUB {
    return Intl.message(
      'HUB',
      name: 'HUB',
      desc: '',
      args: [],
    );
  }

  /// `مرحبًا بك في`
  String get on_boarding_title1 {
    return Intl.message(
      'مرحبًا بك في',
      name: 'on_boarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.`
  String get on_boarding_body1 {
    return Intl.message(
      'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
      name: 'on_boarding_body1',
      desc: '',
      args: [],
    );
  }

  /// `ابحث وتسوق`
  String get on_boarding_title2 {
    return Intl.message(
      'ابحث وتسوق',
      name: 'on_boarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية`
  String get on_boarding_body2 {
    return Intl.message(
      'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
      name: 'on_boarding_body2',
      desc: '',
      args: [],
    );
  }

  /// `ابدأ الان`
  String get get_started {
    return Intl.message(
      'ابدأ الان',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل دخول`
  String get login {
    return Intl.message(
      'تسجيل دخول',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `البريد الإلكتروني`
  String get email {
    return Intl.message(
      'البريد الإلكتروني',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور؟`
  String get forget_password {
    return Intl.message(
      'نسيت كلمة المرور؟',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// ` ؟لاتمتلك حساب`
  String get You_do_not_have_account {
    return Intl.message(
      ' ؟لاتمتلك حساب',
      name: 'You_do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// ` قم بإنشاء حساب`
  String get please_create_account {
    return Intl.message(
      ' قم بإنشاء حساب',
      name: 'please_create_account',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
