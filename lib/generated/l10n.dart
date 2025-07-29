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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Fruit`
  String get fruit {
    return Intl.message('Fruit', name: 'fruit', desc: '', args: []);
  }

  /// `HUB`
  String get hUB {
    return Intl.message('HUB', name: 'hUB', desc: '', args: []);
  }

  /// `Welcome to`
  String get on_boarding_title1 {
    return Intl.message(
      'Welcome to',
      name: 'on_boarding_title1',
      desc: '',
      args: [],
    );
  }

  /// `Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and top quality.`
  String get on_boarding_body1 {
    return Intl.message(
      'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and top quality.',
      name: 'on_boarding_body1',
      desc: '',
      args: [],
    );
  }

  /// `Search & Shop`
  String get on_boarding_title2 {
    return Intl.message(
      'Search & Shop',
      name: 'on_boarding_title2',
      desc: '',
      args: [],
    );
  }

  /// `We offer you the best carefully selected fruits. View details, photos, and reviews to make sure you choose the perfect fruit.`
  String get on_boarding_body2 {
    return Intl.message(
      'We offer you the best carefully selected fruits. View details, photos, and reviews to make sure you choose the perfect fruit.',
      name: 'on_boarding_body2',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message('Get Started', name: 'get_started', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Forgot password?`
  String get forget_password {
    return Intl.message(
      'Forgot password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get you_do_not_have_account {
    return Intl.message(
      'Don’t have an account?',
      name: 'you_do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Create an account`
  String get please_create_account {
    return Intl.message(
      'Create an account',
      name: 'please_create_account',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Login with Google`
  String get login_by_google {
    return Intl.message(
      'Login with Google',
      name: 'login_by_google',
      desc: '',
      args: [],
    );
  }

  /// `Login with Apple`
  String get login_by_apple {
    return Intl.message(
      'Login with Apple',
      name: 'login_by_apple',
      desc: '',
      args: [],
    );
  }

  /// `Login with Facebook`
  String get login_by_facebook {
    return Intl.message(
      'Login with Facebook',
      name: 'login_by_facebook',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get new_account {
    return Intl.message('New Account', name: 'new_account', desc: '', args: []);
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `By creating an account, you agree to `
  String get terms_and_coniditions_1 {
    return Intl.message(
      'By creating an account, you agree to ',
      name: 'terms_and_coniditions_1',
      desc: '',
      args: [],
    );
  }

  /// `our Terms and Conditions`
  String get terms_and_coniditions_2 {
    return Intl.message(
      'our Terms and Conditions',
      name: 'terms_and_coniditions_2',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get create_new_account {
    return Intl.message(
      'Create New Account',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get you_have_aleardy_account {
    return Intl.message(
      'Already have an account?',
      name: 'you_have_aleardy_account',
      desc: '',
      args: [],
    );
  }

  /// `You must accept the terms and conditions`
  String get you_have_to_accept_terms_and_conidiations {
    return Intl.message(
      'You must accept the terms and conditions',
      name: 'you_have_to_accept_terms_and_conidiations',
      desc: '',
      args: [],
    );
  }

  /// `Looking for.......`
  String get looking_for {
    return Intl.message(
      'Looking for.......',
      name: 'looking_for',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Products`
  String get products {
    return Intl.message('Products', name: 'products', desc: '', args: []);
  }

  /// `Shopping Cart`
  String get shopping_cart {
    return Intl.message(
      'Shopping Cart',
      name: 'shopping_cart',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get my_account {
    return Intl.message('My Account', name: 'my_account', desc: '', args: []);
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
