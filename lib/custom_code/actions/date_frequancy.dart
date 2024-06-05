// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<DateTime> dateFrequancy(
  BuildContext context,
  String? frequency,
) async {
  // Get the current date
  DateTime currentDate = DateTime.now();

  // Define a variable for the previous date
  DateTime previousDate;

  // Calculate the previous date based on the frequency
  if (frequency == 'weekly') {
    previousDate = currentDate.subtract(Duration(days: 7));
  } else if (frequency == 'monthly') {
    previousDate = currentDate.subtract(Duration(days: 30));
  } else if (frequency == 'daily') {
    previousDate = currentDate;
  } else {
    throw ArgumentError(
        'Invalid frequency: $frequency. Use "daily", "weekly", or "monthly".');
  }
  return previousDate;
}
