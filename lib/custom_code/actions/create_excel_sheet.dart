// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io';
import 'package:csv/csv.dart';
import 'package:path_provider/path_provider.dart';

Future<void> createExcelSheet(BuildContext context) async {
  List<List<dynamic>> rows = [
    ["Name", "Age", "Location"],
    ["John Doe", 30, "New York"],
    ["Jane Smith", 25, "Los Angeles"],
  ];

  String csvData = const ListToCsvConverter().convert(rows);

  // Get the documents directory
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/example.csv';
  final file = File(filePath);

  try {
    await file.writeAsString(csvData);
    print('CSV file created successfully at: $filePath');
  } catch (e) {
    print('Error creating CSV file: $e');
  }
}
