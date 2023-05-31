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

  /// `The {T} can not be empty`
  String The_can_not_be_empty(Object T) {
    return Intl.message(
      'The $T can not be empty',
      name: 'The_can_not_be_empty',
      desc: '',
      args: [T],
    );
  }

  /// `Get Started`
  String get Get_Started {
    return Intl.message(
      'Get Started',
      name: 'Get_Started',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get Next {
    return Intl.message(
      'Next',
      name: 'Next',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get Home {
    return Intl.message(
      'Home',
      name: 'Home',
      desc: '',
      args: [],
    );
  }

  /// `Notices`
  String get Notices {
    return Intl.message(
      'Notices',
      name: 'Notices',
      desc: '',
      args: [],
    );
  }

  /// `Bookings`
  String get Bookings {
    return Intl.message(
      'Bookings',
      name: 'Bookings',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get Profile {
    return Intl.message(
      'Profile',
      name: 'Profile',
      desc: '',
      args: [],
    );
  }

  /// `Homes`
  String get Homes {
    return Intl.message(
      'Homes',
      name: 'Homes',
      desc: '',
      args: [],
    );
  }

  /// `Stores`
  String get Stores {
    return Intl.message(
      'Stores',
      name: 'Stores',
      desc: '',
      args: [],
    );
  }

  /// `Workspace`
  String get Workspace {
    return Intl.message(
      'Workspace',
      name: 'Workspace',
      desc: '',
      args: [],
    );
  }

  /// `{T}$ /Month`
  String Month(Object T) {
    return Intl.message(
      '$T\$ /Month',
      name: 'Month',
      desc: '',
      args: [T],
    );
  }

  /// `{T}m`
  String M(Object T) {
    return Intl.message(
      '${T}m',
      name: 'M',
      desc: '',
      args: [T],
    );
  }

  /// `{T} Bathroom`
  String Bathroom(Object T) {
    return Intl.message(
      '$T Bathroom',
      name: 'Bathroom',
      desc: '',
      args: [T],
    );
  }

  /// `{T} Room`
  String Room(Object T) {
    return Intl.message(
      '$T Room',
      name: 'Room',
      desc: '',
      args: [T],
    );
  }

  /// `Filter edit`
  String get Filter_edit {
    return Intl.message(
      'Filter edit',
      name: 'Filter_edit',
      desc: '',
      args: [],
    );
  }

  /// `The type of property`
  String get The_type_of_property {
    return Intl.message(
      'The type of property',
      name: 'The_type_of_property',
      desc: '',
      args: [],
    );
  }

  /// `Residential apartment/house`
  String get Residential_apartment_house {
    return Intl.message(
      'Residential apartment/house',
      name: 'Residential_apartment_house',
      desc: '',
      args: [],
    );
  }

  /// `The number of rooms`
  String get The_number_of_rooms {
    return Intl.message(
      'The number of rooms',
      name: 'The_number_of_rooms',
      desc: '',
      args: [],
    );
  }

  /// `Number of bathrooms`
  String get Number_of_bathrooms {
    return Intl.message(
      'Number of bathrooms',
      name: 'Number_of_bathrooms',
      desc: '',
      args: [],
    );
  }

  /// `Average price`
  String get Average_price {
    return Intl.message(
      'Average price',
      name: 'Average_price',
      desc: '',
      args: [],
    );
  }

  /// `District/neighborhood`
  String get District_neighborhood {
    return Intl.message(
      'District/neighborhood',
      name: 'District_neighborhood',
      desc: '',
      args: [],
    );
  }

  /// `Monthly \`
  String get Monthly {
    return Intl.message(
      'Monthly \\',
      name: 'Monthly',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get Location {
    return Intl.message(
      'Location',
      name: 'Location',
      desc: '',
      args: [],
    );
  }

  /// `Description of the property`
  String get Description_of_the_property {
    return Intl.message(
      'Description of the property',
      name: 'Description_of_the_property',
      desc: '',
      args: [],
    );
  }

  /// `Apartment directions`
  String get Apartment_directions {
    return Intl.message(
      'Apartment directions',
      name: 'Apartment_directions',
      desc: '',
      args: [],
    );
  }

  /// `Up to ${A} - ${B} for   {C} - {D} rooms`
  String Up_to_for_rooms(Object A, Object B, Object C, Object D) {
    return Intl.message(
      'Up to \$$A - \$$B for   $C - $D rooms',
      name: 'Up_to_for_rooms',
      desc: '',
      args: [A, B, C, D],
    );
  }

  /// `Real estate`
  String get Real_estate {
    return Intl.message(
      'Real estate',
      name: 'Real_estate',
      desc: '',
      args: [],
    );
  }

  /// `General real estate`
  String get General_real_estate {
    return Intl.message(
      'General real estate',
      name: 'General_real_estate',
      desc: '',
      args: [],
    );
  }

  /// `Private real estate`
  String get Private_real_estate {
    return Intl.message(
      'Private real estate',
      name: 'Private_real_estate',
      desc: '',
      args: [],
    );
  }

  /// `My real estate`
  String get My_real_estate {
    return Intl.message(
      'My real estate',
      name: 'My_real_estate',
      desc: '',
      args: [],
    );
  }

  /// `House`
  String get House {
    return Intl.message(
      'House',
      name: 'House',
      desc: '',
      args: [],
    );
  }

  /// `Add real estate`
  String get Add_real_estate {
    return Intl.message(
      'Add real estate',
      name: 'Add_real_estate',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get Messages {
    return Intl.message(
      'Messages',
      name: 'Messages',
      desc: '',
      args: [],
    );
  }

  /// `Monthly rent: ${T}`
  String Monthly_rent(Object T) {
    return Intl.message(
      'Monthly rent: \$$T',
      name: 'Monthly_rent',
      desc: '',
      args: [T],
    );
  }

  /// `Remaining to receive the rent: {T} days`
  String Remaining_to_receive_the_rent(Object T) {
    return Intl.message(
      'Remaining to receive the rent: $T days',
      name: 'Remaining_to_receive_the_rent',
      desc: '',
      args: [T],
    );
  }

  /// `Choose the type of property`
  String get Choose_the_type_of_property {
    return Intl.message(
      'Choose the type of property',
      name: 'Choose_the_type_of_property',
      desc: '',
      args: [],
    );
  }

  /// `Additional details`
  String get Additional_details {
    return Intl.message(
      'Additional details',
      name: 'Additional_details',
      desc: '',
      args: [],
    );
  }

  /// `Price and duration of leave`
  String get Price_and_duration_of_leave {
    return Intl.message(
      'Price and duration of leave',
      name: 'Price_and_duration_of_leave',
      desc: '',
      args: [],
    );
  }

  /// `Increase hours`
  String get Increase_hours {
    return Intl.message(
      'Increase hours',
      name: 'Increase_hours',
      desc: '',
      args: [],
    );
  }

  /// `Upload photo`
  String get Upload_photo {
    return Intl.message(
      'Upload photo',
      name: 'Upload_photo',
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
