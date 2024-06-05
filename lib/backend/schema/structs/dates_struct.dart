// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatesStruct extends BaseStruct {
  DatesStruct({
    List<DataStruct>? data,
  }) : _data = data;

  // "data" field.
  List<DataStruct>? _data;
  List<DataStruct> get data => _data ?? const [];
  set data(List<DataStruct>? val) => _data = val;
  void updateData(Function(List<DataStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static DatesStruct fromMap(Map<String, dynamic> data) => DatesStruct(
        data: getStructList(
          data['data'],
          DataStruct.fromMap,
        ),
      );

  static DatesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DatesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static DatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatesStruct(
        data: deserializeStructParam<DataStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DatesStruct && listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

DatesStruct createDatesStruct() => DatesStruct();
