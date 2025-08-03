import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 's_ar.dart';
import 's_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/s.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @fruit.
  ///
  /// In en, this message translates to:
  /// **'Fruit'**
  String get fruit;

  /// No description provided for @hUB.
  ///
  /// In en, this message translates to:
  /// **'HUB'**
  String get hUB;

  /// No description provided for @on_boarding_title1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to'**
  String get on_boarding_title1;

  /// No description provided for @on_boarding_body1.
  ///
  /// In en, this message translates to:
  /// **'Discover a unique shopping experience with FruitHUB. Explore our wide range of premium fresh fruits and get the best deals and top quality.'**
  String get on_boarding_body1;

  /// No description provided for @on_boarding_title2.
  ///
  /// In en, this message translates to:
  /// **'Search & Shop'**
  String get on_boarding_title2;

  /// No description provided for @on_boarding_body2.
  ///
  /// In en, this message translates to:
  /// **'We offer you the best carefully selected fruits. View details, photos, and reviews to make sure you choose the perfect fruit.'**
  String get on_boarding_body2;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forget_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forget_password;

  /// No description provided for @you_do_not_have_account.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get you_do_not_have_account;

  /// No description provided for @please_create_account.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get please_create_account;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @login_by_google.
  ///
  /// In en, this message translates to:
  /// **'Login with Google'**
  String get login_by_google;

  /// No description provided for @login_by_apple.
  ///
  /// In en, this message translates to:
  /// **'Login with Apple'**
  String get login_by_apple;

  /// No description provided for @login_by_facebook.
  ///
  /// In en, this message translates to:
  /// **'Login with Facebook'**
  String get login_by_facebook;

  /// No description provided for @new_account.
  ///
  /// In en, this message translates to:
  /// **'New Account'**
  String get new_account;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @terms_and_coniditions_1.
  ///
  /// In en, this message translates to:
  /// **'By creating an account, you agree to '**
  String get terms_and_coniditions_1;

  /// No description provided for @terms_and_coniditions_2.
  ///
  /// In en, this message translates to:
  /// **'our Terms and Conditions'**
  String get terms_and_coniditions_2;

  /// No description provided for @create_new_account.
  ///
  /// In en, this message translates to:
  /// **'Create New Account'**
  String get create_new_account;

  /// No description provided for @you_have_aleardy_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get you_have_aleardy_account;

  /// No description provided for @you_have_to_accept_terms_and_conidiations.
  ///
  /// In en, this message translates to:
  /// **'You must accept the terms and conditions'**
  String get you_have_to_accept_terms_and_conidiations;

  /// No description provided for @looking_for.
  ///
  /// In en, this message translates to:
  /// **'Looking for.......'**
  String get looking_for;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @shopping_cart.
  ///
  /// In en, this message translates to:
  /// **'Shopping Cart'**
  String get shopping_cart;

  /// No description provided for @my_account.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get my_account;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return SAr();
    case 'en':
      return SEn();
  }

  throw FlutterError(
      'S.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
