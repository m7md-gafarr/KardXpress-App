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

  /// `KardXpress`
  String get name {
    return Intl.message(
      'KardXpress',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to KardXpress! The fastest solution for recharging your balance using recharge card recognition technology.`
  String get intro_0 {
    return Intl.message(
      'Welcome to KardXpress! The fastest solution for recharging your balance using recharge card recognition technology.',
      name: 'intro_0',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture of your recharge card, and we’ll extract the number automatically. No more manual errors!`
  String get intro_1 {
    return Intl.message(
      'Take a picture of your recharge card, and we’ll extract the number automatically. No more manual errors!',
      name: 'intro_1',
      desc: '',
      args: [],
    );
  }

  /// `Get started now and recharge in seconds! Simple and fast with just one click.`
  String get intro_2 {
    return Intl.message(
      'Get started now and recharge in seconds! Simple and fast with just one click.',
      name: 'intro_2',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get intro_3 {
    return Intl.message(
      'Skip',
      name: 'intro_3',
      desc: '',
      args: [],
    );
  }

  /// `Let's start`
  String get intro_4 {
    return Intl.message(
      'Let\'s start',
      name: 'intro_4',
      desc: '',
      args: [],
    );
  }

  /// `Swipe left`
  String get intro_5 {
    return Intl.message(
      'Swipe left',
      name: 'intro_5',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get home_1 {
    return Intl.message(
      '',
      name: 'home_1',
      desc: '',
      args: [],
    );
  }

  /// `Select Opation`
  String get home_2_1 {
    return Intl.message(
      'Select Opation',
      name: 'home_2_1',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get home_2_2 {
    return Intl.message(
      'Camera',
      name: 'home_2_2',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get home_2_3 {
    return Intl.message(
      'Gallery',
      name: 'home_2_3',
      desc: '',
      args: [],
    );
  }

  /// `Reading failed`
  String get home_3_1 {
    return Intl.message(
      'Reading failed',
      name: 'home_3_1',
      desc: '',
      args: [],
    );
  }

  /// `Take a clear picture of the recharge card`
  String get home_3_2_1 {
    return Intl.message(
      'Take a clear picture of the recharge card',
      name: 'home_3_2_1',
      desc: '',
      args: [],
    );
  }

  /// `Make sure to select the correct service provider for the recharge card`
  String get home_3_2_2 {
    return Intl.message(
      'Make sure to select the correct service provider for the recharge card',
      name: 'home_3_2_2',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get home_3_3 {
    return Intl.message(
      'Close',
      name: 'home_3_3',
      desc: '',
      args: [],
    );
  }

  /// `We always simplify it for you.`
  String get home_4_1 {
    return Intl.message(
      'We always simplify it for you.',
      name: 'home_4_1',
      desc: '',
      args: [],
    );
  }

  /// `mobile companies in`
  String get home_4_2 {
    return Intl.message(
      'mobile companies in',
      name: 'home_4_2',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get setting_1 {
    return Intl.message(
      'App Language',
      name: 'setting_1',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get setting_2 {
    return Intl.message(
      'Theme',
      name: 'setting_2',
      desc: '',
      args: [],
    );
  }

  /// `Share App`
  String get setting_3 {
    return Intl.message(
      'Share App',
      name: 'setting_3',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get setting_4 {
    return Intl.message(
      'Help',
      name: 'setting_4',
      desc: '',
      args: [],
    );
  }

  /// `Share App With Frindes`
  String get setting_5 {
    return Intl.message(
      'Share App With Frindes',
      name: 'setting_5',
      desc: '',
      args: [],
    );
  }

  /// `Help Center, Privacy Policy, App Info`
  String get setting_6 {
    return Intl.message(
      'Help Center, Privacy Policy, App Info',
      name: 'setting_6',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get setting_7 {
    return Intl.message(
      'Dark',
      name: 'setting_7',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get setting_8 {
    return Intl.message(
      'Light',
      name: 'setting_8',
      desc: '',
      args: [],
    );
  }

  /// `Follow My`
  String get setting_9 {
    return Intl.message(
      'Follow My',
      name: 'setting_9',
      desc: '',
      args: [],
    );
  }

  /// `Vodafone`
  String get Vodafone {
    return Intl.message(
      'Vodafone',
      name: 'Vodafone',
      desc: '',
      args: [],
    );
  }

  /// `Orange`
  String get Orange {
    return Intl.message(
      'Orange',
      name: 'Orange',
      desc: '',
      args: [],
    );
  }

  /// `We`
  String get We {
    return Intl.message(
      'We',
      name: 'We',
      desc: '',
      args: [],
    );
  }

  /// `Etisalat`
  String get Etisalat {
    return Intl.message(
      'Etisalat',
      name: 'Etisalat',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get BottomnavBar_1 {
    return Intl.message(
      'Home',
      name: 'BottomnavBar_1',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get BottomnavBar_2 {
    return Intl.message(
      'Other',
      name: 'BottomnavBar_2',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get BottomnavBar_3 {
    return Intl.message(
      'Menu',
      name: 'BottomnavBar_3',
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
