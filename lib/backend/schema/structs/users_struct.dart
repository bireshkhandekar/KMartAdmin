// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    int? userId,
    String? userName,
    String? moblieNumber,
    String? address,
  })  : _userId = userId,
        _userName = userName,
        _moblieNumber = moblieNumber,
        _address = address;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;
  void incrementUserId(int amount) => _userId = userId + amount;
  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "moblie_number" field.
  String? _moblieNumber;
  String get moblieNumber => _moblieNumber ?? '';
  set moblieNumber(String? val) => _moblieNumber = val;
  bool hasMoblieNumber() => _moblieNumber != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;
  bool hasAddress() => _address != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        userId: castToType<int>(data['user_id']),
        userName: data['user_name'] as String?,
        moblieNumber: data['moblie_number'] as String?,
        address: data['address'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_id': _userId,
        'user_name': _userName,
        'moblie_number': _moblieNumber,
        'address': _address,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_id': serializeParam(
          _userId,
          ParamType.int,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'moblie_number': serializeParam(
          _moblieNumber,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        userId: deserializeParam(
          data['user_id'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        moblieNumber: deserializeParam(
          data['moblie_number'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        userId == other.userId &&
        userName == other.userName &&
        moblieNumber == other.moblieNumber &&
        address == other.address;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userId, userName, moblieNumber, address]);
}

UsersStruct createUsersStruct({
  int? userId,
  String? userName,
  String? moblieNumber,
  String? address,
}) =>
    UsersStruct(
      userId: userId,
      userName: userName,
      moblieNumber: moblieNumber,
      address: address,
    );
