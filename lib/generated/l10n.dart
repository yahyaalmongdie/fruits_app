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

  /// ` ابحث عن.......`
  String get looking_for {
    return Intl.message(
      ' ابحث عن.......',
      name: 'looking_for',
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

  /// `أو`
  String get Or {
    return Intl.message(
      'أو',
      name: 'Or',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة جوجل`
  String get login_by_google {
    return Intl.message(
      'تسجيل بواسطة جوجل',
      name: 'login_by_google',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة أبل`
  String get login_by_apple {
    return Intl.message(
      'تسجيل بواسطة أبل',
      name: 'login_by_apple',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل بواسطة فيسبوك`
  String get login_by_facebook {
    return Intl.message(
      'تسجيل بواسطة فيسبوك',
      name: 'login_by_facebook',
      desc: '',
      args: [],
    );
  }

  /// `حساب جديد`
  String get new_account {
    return Intl.message(
      'حساب جديد',
      name: 'new_account',
      desc: '',
      args: [],
    );
  }

  /// `الاسم كامل`
  String get full_name {
    return Intl.message(
      'الاسم كامل',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `من خلال إنشاء حساب ، فإنك توافق على `
  String get terms_and_coniditions_1 {
    return Intl.message(
      'من خلال إنشاء حساب ، فإنك توافق على ',
      name: 'terms_and_coniditions_1',
      desc: '',
      args: [],
    );
  }

  /// `الشروط والأحكام الخاصة بنا`
  String get terms_and_coniditions_2 {
    return Intl.message(
      'الشروط والأحكام الخاصة بنا',
      name: 'terms_and_coniditions_2',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب جديد`
  String get create_new_account {
    return Intl.message(
      'إنشاء حساب جديد',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `تمتلك حساب بالفعل؟`
  String get you_have_aleardy_account {
    return Intl.message(
      'تمتلك حساب بالفعل؟',
      name: 'you_have_aleardy_account',
      desc: '',
      args: [],
    );
  }

  /// "يجب عليك قبول الشروط والاحكام"
  String get you_have_to_accept_terms_and_conidiations {
    return Intl.message(
      "يجب عليك قبول الشروط والاحكام",
      name: 'you_have_to_accept_terms_and_conidiations',
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
