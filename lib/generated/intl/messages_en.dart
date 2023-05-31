// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(T) => "${T} Bathroom";

  static String m1(T) => "${T}m";

  static String m2(T) => "${T}\$ /Month";

  static String m3(T) => "Monthly rent: \$${T}";

  static String m4(T) => "Remaining to receive the rent: ${T} days";

  static String m5(T) => "${T} Room";

  static String m6(T) => "The ${T} can not be empty";

  static String m7(A, B, C, D) =>
      "Up to \$${A} - \$${B} for   ${C} - ${D} rooms";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "Add_real_estate":
            MessageLookupByLibrary.simpleMessage("Add real estate"),
        "Additional_details":
            MessageLookupByLibrary.simpleMessage("Additional details"),
        "Apartment_directions":
            MessageLookupByLibrary.simpleMessage("Apartment directions"),
        "Average_price": MessageLookupByLibrary.simpleMessage("Average price"),
        "Bathroom": m0,
        "Bookings": MessageLookupByLibrary.simpleMessage("Bookings"),
        "Choose_the_type_of_property":
            MessageLookupByLibrary.simpleMessage("Choose the type of property"),
        "Description_of_the_property":
            MessageLookupByLibrary.simpleMessage("Description of the property"),
        "District_neighborhood":
            MessageLookupByLibrary.simpleMessage("District/neighborhood"),
        "Filter_edit": MessageLookupByLibrary.simpleMessage("Filter edit"),
        "General_real_estate":
            MessageLookupByLibrary.simpleMessage("General real estate"),
        "Get_Started": MessageLookupByLibrary.simpleMessage("Get Started"),
        "Home": MessageLookupByLibrary.simpleMessage("Home"),
        "Homes": MessageLookupByLibrary.simpleMessage("Homes"),
        "House": MessageLookupByLibrary.simpleMessage("House"),
        "Increase_hours":
            MessageLookupByLibrary.simpleMessage("Increase hours"),
        "Location": MessageLookupByLibrary.simpleMessage("Location"),
        "M": m1,
        "Messages": MessageLookupByLibrary.simpleMessage("Messages"),
        "Month": m2,
        "Monthly": MessageLookupByLibrary.simpleMessage("Monthly \\"),
        "Monthly_rent": m3,
        "My_real_estate":
            MessageLookupByLibrary.simpleMessage("My real estate"),
        "Next": MessageLookupByLibrary.simpleMessage("Next"),
        "Notices": MessageLookupByLibrary.simpleMessage("Notices"),
        "Number_of_bathrooms":
            MessageLookupByLibrary.simpleMessage("Number of bathrooms"),
        "Price_and_duration_of_leave":
            MessageLookupByLibrary.simpleMessage("Price and duration of leave"),
        "Private_real_estate":
            MessageLookupByLibrary.simpleMessage("Private real estate"),
        "Profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "Real_estate": MessageLookupByLibrary.simpleMessage("Real estate"),
        "Remaining_to_receive_the_rent": m4,
        "Residential_apartment_house":
            MessageLookupByLibrary.simpleMessage("Residential apartment/house"),
        "Room": m5,
        "Stores": MessageLookupByLibrary.simpleMessage("Stores"),
        "The_can_not_be_empty": m6,
        "The_number_of_rooms":
            MessageLookupByLibrary.simpleMessage("The number of rooms"),
        "The_type_of_property":
            MessageLookupByLibrary.simpleMessage("The type of property"),
        "Up_to_for_rooms": m7,
        "Upload_photo": MessageLookupByLibrary.simpleMessage("Upload photo"),
        "Workspace": MessageLookupByLibrary.simpleMessage("Workspace")
      };
}
