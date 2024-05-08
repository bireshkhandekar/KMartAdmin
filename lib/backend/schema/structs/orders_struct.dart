// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersStruct extends BaseStruct {
  OrdersStruct({
    String? orderId,
    DateTime? orderDate,
    String? orderStatus,
    String? paymentStatus,
  })  : _orderId = orderId,
        _orderDate = orderDate,
        _orderStatus = orderStatus,
        _paymentStatus = paymentStatus;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  set orderId(String? val) => _orderId = val;
  bool hasOrderId() => _orderId != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  set orderDate(DateTime? val) => _orderDate = val;
  bool hasOrderDate() => _orderDate != null;

  // "order_status" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  set orderStatus(String? val) => _orderStatus = val;
  bool hasOrderStatus() => _orderStatus != null;

  // "payment_status" field.
  String? _paymentStatus;
  String get paymentStatus => _paymentStatus ?? '';
  set paymentStatus(String? val) => _paymentStatus = val;
  bool hasPaymentStatus() => _paymentStatus != null;

  static OrdersStruct fromMap(Map<String, dynamic> data) => OrdersStruct(
        orderId: data['order_id'] as String?,
        orderDate: data['order_date'] as DateTime?,
        orderStatus: data['order_status'] as String?,
        paymentStatus: data['payment_status'] as String?,
      );

  static OrdersStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrdersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'order_id': _orderId,
        'order_date': _orderDate,
        'order_status': _orderStatus,
        'payment_status': _paymentStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'order_id': serializeParam(
          _orderId,
          ParamType.String,
        ),
        'order_date': serializeParam(
          _orderDate,
          ParamType.DateTime,
        ),
        'order_status': serializeParam(
          _orderStatus,
          ParamType.String,
        ),
        'payment_status': serializeParam(
          _paymentStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrdersStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdersStruct(
        orderId: deserializeParam(
          data['order_id'],
          ParamType.String,
          false,
        ),
        orderDate: deserializeParam(
          data['order_date'],
          ParamType.DateTime,
          false,
        ),
        orderStatus: deserializeParam(
          data['order_status'],
          ParamType.String,
          false,
        ),
        paymentStatus: deserializeParam(
          data['payment_status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrdersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdersStruct &&
        orderId == other.orderId &&
        orderDate == other.orderDate &&
        orderStatus == other.orderStatus &&
        paymentStatus == other.paymentStatus;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([orderId, orderDate, orderStatus, paymentStatus]);
}

OrdersStruct createOrdersStruct({
  String? orderId,
  DateTime? orderDate,
  String? orderStatus,
  String? paymentStatus,
}) =>
    OrdersStruct(
      orderId: orderId,
      orderDate: orderDate,
      orderStatus: orderStatus,
      paymentStatus: paymentStatus,
    );
