import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String jsonToCsv(List<dynamic> jsonData) {
  // json To Csv
  String csv = '';

// Get headers
  Set<String> headers = {};
  for (var data in jsonData) {
    headers.addAll(data.keys);
  }
  csv += headers.join(',') + '\n';

// Get values
  for (var data in jsonData) {
    List<String> values = [];
    for (var header in headers) {
      if (data.containsKey(header)) {
        values.add(data[header].toString());
      } else {
        values.add('');
      }
    }
    csv += values.join(',') + '\n';
  }

  return csv;
}

String? itemisActive(bool? isactive) {
  // isactive is true then return Available other wise return Not Available
  if (isactive == true) {
    return 'Available';
  } else {
    return 'Not Available';
  }
}

String convertbooleantostring(bool status) {
  // convert boolean to string
  return status ? 'true' : 'false';
}

DateTime? weeklydates() {
  // Subtract 7 days from current date
  DateTime currentDate = DateTime.now();
  DateTime weeklyDate = currentDate.subtract(Duration(days: 7));
  return weeklyDate;
}

DateTime? monthlydate() {
  // Subtract 30 days from current date
  DateTime currentDate = DateTime.now();
  DateTime monthlyDate = currentDate.subtract(Duration(days: 30));
  return monthlyDate;
}

int? convertDatesToDay(
  DateTime? date1,
  DateTime? date2,
  int? quantity,
) {
  // date1 to date2 difference
  if (date1 == null || date2 == null || quantity == null) {
    return null;
  }
  final difference = date2.difference(date1).inDays + 1;
  int totalQuantity = difference * quantity;
  return totalQuantity;
}
