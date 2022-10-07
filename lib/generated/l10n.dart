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

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Exam Papers`
  String get exam_papers {
    return Intl.message(
      'Exam Papers',
      name: 'exam_papers',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Pass the exam`
  String get try_exam {
    return Intl.message(
      'Pass the exam',
      name: 'try_exam',
      desc: '',
      args: [],
    );
  }

  /// `Choose exam paper`
  String get choose_paper {
    return Intl.message(
      'Choose exam paper',
      name: 'choose_paper',
      desc: '',
      args: [],
    );
  }

  /// `Category ABM`
  String get category_ABM {
    return Intl.message(
      'Category ABM',
      name: 'category_ABM',
      desc: '',
      args: [],
    );
  }

  /// `Exam paper #`
  String get exam_paper {
    return Intl.message(
      'Exam paper #',
      name: 'exam_paper',
      desc: '',
      args: [],
    );
  }

  /// `Warning!`
  String get warning_alert {
    return Intl.message(
      'Warning!',
      name: 'warning_alert',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit? Your progress will not be saved.`
  String get warning_alert_content {
    return Intl.message(
      'Are you sure you want to exit? Your progress will not be saved.',
      name: 'warning_alert_content',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get action_exit {
    return Intl.message(
      'Exit',
      name: 'action_exit',
      desc: '',
      args: [],
    );
  }

  /// `Stay`
  String get action_stay {
    return Intl.message(
      'Stay',
      name: 'action_stay',
      desc: '',
      args: [],
    );
  }

  /// `Question #`
  String get question {
    return Intl.message(
      'Question #',
      name: 'question',
      desc: '',
      args: [],
    );
  }

  /// `This question without an image.`
  String get question_without_image {
    return Intl.message(
      'This question without an image.',
      name: 'question_without_image',
      desc: '',
      args: [],
    );
  }

  /// `Next Question`
  String get action_next_question {
    return Intl.message(
      'Next Question',
      name: 'action_next_question',
      desc: '',
      args: [],
    );
  }

  /// `See Results`
  String get action_see_results {
    return Intl.message(
      'See Results',
      name: 'action_see_results',
      desc: '',
      args: [],
    );
  }

  /// `Your score is: `
  String get your_score_is {
    return Intl.message(
      'Your score is: ',
      name: 'your_score_is',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get success {
    return Intl.message(
      'Success!',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Failure.`
  String get failure {
    return Intl.message(
      'Failure.',
      name: 'failure',
      desc: '',
      args: [],
    );
  }

  /// `Hello, `
  String get greetings {
    return Intl.message(
      'Hello, ',
      name: 'greetings',
      desc: '',
      args: [],
    );
  }

  /// `Fullname`
  String get fullname {
    return Intl.message(
      'Fullname',
      name: 'fullname',
      desc: '',
      args: [],
    );
  }

  /// `Number of group: `
  String get number_of_group {
    return Intl.message(
      'Number of group: ',
      name: 'number_of_group',
      desc: '',
      args: [],
    );
  }

  /// `Phone number: `
  String get phone_number {
    return Intl.message(
      'Phone number: ',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get action_logout {
    return Intl.message(
      'Log Out',
      name: 'action_logout',
      desc: '',
      args: [],
    );
  }

  /// `Pick Random`
  String get action_pick_random {
    return Intl.message(
      'Pick Random',
      name: 'action_pick_random',
      desc: '',
      args: [],
    );
  }

  /// `Log In your Account`
  String get login_title {
    return Intl.message(
      'Log In your Account',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `Log into your school account by phone verification.`
  String get login_subtitle {
    return Intl.message(
      'Log into your school account by phone verification.',
      name: 'login_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? Sign Up for study at Djal Auto driving school.`
  String get login_registration {
    return Intl.message(
      'Don\'t have an account? Sign Up for study at Djal Auto driving school.',
      name: 'login_registration',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get action_login {
    return Intl.message(
      'Login',
      name: 'action_login',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get action_send_code {
    return Intl.message(
      'Send Code',
      name: 'action_send_code',
      desc: '',
      args: [],
    );
  }

  /// `700 700 700`
  String get phone_hint_text {
    return Intl.message(
      '700 700 700',
      name: 'phone_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `+996`
  String get country_code_hint_text {
    return Intl.message(
      '+996',
      name: 'country_code_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Have an Account?`
  String get redirect_title {
    return Intl.message(
      'Have an Account?',
      name: 'redirect_title',
      desc: '',
      args: [],
    );
  }

  /// `Continue as Guest`
  String get action_continue_as_guest {
    return Intl.message(
      'Continue as Guest',
      name: 'action_continue_as_guest',
      desc: '',
      args: [],
    );
  }

  /// `Create User`
  String get action_create_user {
    return Intl.message(
      'Create User',
      name: 'action_create_user',
      desc: '',
      args: [],
    );
  }

  /// `Admin`
  String get is_admin {
    return Intl.message(
      'Admin',
      name: 'is_admin',
      desc: '',
      args: [],
    );
  }

  /// `Student`
  String get is_student {
    return Intl.message(
      'Student',
      name: 'is_student',
      desc: '',
      args: [],
    );
  }

  /// `Instructor`
  String get is_auto_instructor {
    return Intl.message(
      'Instructor',
      name: 'is_auto_instructor',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get action_verify {
    return Intl.message(
      'Verify',
      name: 'action_verify',
      desc: '',
      args: [],
    );
  }

  /// `Verify an Account`
  String get verify_title {
    return Intl.message(
      'Verify an Account',
      name: 'verify_title',
      desc: '',
      args: [],
    );
  }

  /// `Log In an Account by phone verification.`
  String get verify_subtitle {
    return Intl.message(
      'Log In an Account by phone verification.',
      name: 'verify_subtitle',
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
      Locale.fromSubtags(languageCode: 'kg'),
      Locale.fromSubtags(languageCode: 'ru'),
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
