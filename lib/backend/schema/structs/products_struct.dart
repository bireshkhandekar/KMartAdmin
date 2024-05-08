// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends BaseStruct {
  ProductsStruct({
    String? productName,
    String? productWeight,
    double? productPrice,
    int? productDiscount,
    String? description,
    int? id,
    double? mrp,
    bool? status,
  })  : _productName = productName,
        _productWeight = productWeight,
        _productPrice = productPrice,
        _productDiscount = productDiscount,
        _description = description,
        _id = id,
        _mrp = mrp,
        _status = status;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "product_weight" field.
  String? _productWeight;
  String get productWeight => _productWeight ?? '';
  set productWeight(String? val) => _productWeight = val;
  bool hasProductWeight() => _productWeight != null;

  // "product_price" field.
  double? _productPrice;
  double get productPrice => _productPrice ?? 0.0;
  set productPrice(double? val) => _productPrice = val;
  void incrementProductPrice(double amount) =>
      _productPrice = productPrice + amount;
  bool hasProductPrice() => _productPrice != null;

  // "product_discount" field.
  int? _productDiscount;
  int get productDiscount => _productDiscount ?? 0;
  set productDiscount(int? val) => _productDiscount = val;
  void incrementProductDiscount(int amount) =>
      _productDiscount = productDiscount + amount;
  bool hasProductDiscount() => _productDiscount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "mrp" field.
  double? _mrp;
  double get mrp => _mrp ?? 0.0;
  set mrp(double? val) => _mrp = val;
  void incrementMrp(double amount) => _mrp = mrp + amount;
  bool hasMrp() => _mrp != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;
  bool hasStatus() => _status != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        productName: data['product_name'] as String?,
        productWeight: data['product_weight'] as String?,
        productPrice: castToType<double>(data['product_price']),
        productDiscount: castToType<int>(data['product_discount']),
        description: data['description'] as String?,
        id: castToType<int>(data['id']),
        mrp: castToType<double>(data['mrp']),
        status: data['status'] as bool?,
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product_name': _productName,
        'product_weight': _productWeight,
        'product_price': _productPrice,
        'product_discount': _productDiscount,
        'description': _description,
        'id': _id,
        'mrp': _mrp,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'product_weight': serializeParam(
          _productWeight,
          ParamType.String,
        ),
        'product_price': serializeParam(
          _productPrice,
          ParamType.double,
        ),
        'product_discount': serializeParam(
          _productDiscount,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'mrp': serializeParam(
          _mrp,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsStruct(
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        productWeight: deserializeParam(
          data['product_weight'],
          ParamType.String,
          false,
        ),
        productPrice: deserializeParam(
          data['product_price'],
          ParamType.double,
          false,
        ),
        productDiscount: deserializeParam(
          data['product_discount'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        mrp: deserializeParam(
          data['mrp'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsStruct &&
        productName == other.productName &&
        productWeight == other.productWeight &&
        productPrice == other.productPrice &&
        productDiscount == other.productDiscount &&
        description == other.description &&
        id == other.id &&
        mrp == other.mrp &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        productName,
        productWeight,
        productPrice,
        productDiscount,
        description,
        id,
        mrp,
        status
      ]);
}

ProductsStruct createProductsStruct({
  String? productName,
  String? productWeight,
  double? productPrice,
  int? productDiscount,
  String? description,
  int? id,
  double? mrp,
  bool? status,
}) =>
    ProductsStruct(
      productName: productName,
      productWeight: productWeight,
      productPrice: productPrice,
      productDiscount: productDiscount,
      description: description,
      id: id,
      mrp: mrp,
      status: status,
    );
