// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    DateTime? startDate,
    DateTime? endDate,
  })  : _startDate = startDate,
        _endDate = endDate;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;
  bool hasEndDate() => _endDate != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'start_date': _startDate,
        'end_date': _endDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode => const ListEquality().hash([startDate, endDate]);
}

DataStruct createDataStruct({
  DateTime? startDate,
  DateTime? endDate,
}) =>
    DataStruct(
      startDate: startDate,
      endDate: endDate,
    );
