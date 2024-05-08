import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<OrdersStruct> _order = [
    OrdersStruct.fromSerializableMap(jsonDecode(
        '{\"order_id\":\"#ORD12345\",\"order_date\":\"1714803960000\",\"order_status\":\"processing\",\"payment_status\":\"pendding\"}')),
    OrdersStruct.fromSerializableMap(jsonDecode(
        '{\"order_id\":\"#ORD12346\",\"order_date\":\"1714890420000\",\"order_status\":\"processing\",\"payment_status\":\"pendding\"}')),
    OrdersStruct.fromSerializableMap(jsonDecode(
        '{\"order_id\":\"#ORD12347\",\"order_date\":\"1714804020000\",\"order_status\":\"processing\",\"payment_status\":\"pendding\"}')),
    OrdersStruct.fromSerializableMap(jsonDecode(
        '{\"order_id\":\"#ORD12348\",\"order_date\":\"1714804088900\",\"order_status\":\"processing\",\"payment_status\":\"pendding\"}')),
    OrdersStruct.fromSerializableMap(jsonDecode(
        '{\"order_id\":\"#ORD12349\",\"order_date\":\"1714804129192\",\"order_status\":\"delivered\",\"payment_status\":\"completed\"}')),
    OrdersStruct.fromSerializableMap(jsonDecode(
        '{\"order_id\":\"#ORD12349\",\"order_date\":\"1714814013996\",\"order_status\":\"delivered\",\"payment_status\":\"completed\"}'))
  ];
  List<OrdersStruct> get order => _order;
  set order(List<OrdersStruct> value) {
    _order = value;
  }

  void addToOrder(OrdersStruct value) {
    _order.add(value);
  }

  void removeFromOrder(OrdersStruct value) {
    _order.remove(value);
  }

  void removeAtIndexFromOrder(int index) {
    _order.removeAt(index);
  }

  void updateOrderAtIndex(
    int index,
    OrdersStruct Function(OrdersStruct) updateFn,
  ) {
    _order[index] = updateFn(_order[index]);
  }

  void insertAtIndexInOrder(int index, OrdersStruct value) {
    _order.insert(index, value);
  }

  List<ProductsStruct> _product = [
    ProductsStruct.fromSerializableMap(jsonDecode(
        '{\"product_name\":\"milk\",\"product_weight\":\"500ml\",\"product_price\":\"34.0\",\"product_discount\":\"2\",\"description\":\"Heritage Buffalo Milk, 500 ml Pouch\",\"id\":\"7\",\"mrp\":\"36.0\",\"status\":\"true\"}')),
    ProductsStruct.fromSerializableMap(jsonDecode(
        '{\"product_name\":\"paneer\",\"product_weight\":\"250gm\",\"product_price\":\"48.0\",\"product_discount\":\"2\",\"description\":\"Paneer is best known for its silky texture and creamy after-taste, spices and nuts\",\"id\":\"11\",\"mrp\":\"50.0\"}')),
    ProductsStruct.fromSerializableMap(jsonDecode(
        '{\"product_name\":\"shrikhand\",\"product_weight\":\"500gm\",\"product_price\":\"88.0\",\"product_discount\":\"2\",\"description\":\"Chitale Dairy Full Cream Shrikhand Elaichi, 500 gms\",\"id\":\"12\",\"mrp\":\"90.0\",\"status\":\"true\"}')),
    ProductsStruct.fromSerializableMap(jsonDecode(
        '{\"product_name\":\"butter\",\"product_weight\":\"250gm\",\"product_price\":\"50.0\",\"product_discount\":\"0\",\"description\":\"Unsalted, 500 gms Carton\",\"id\":\"6\",\"mrp\":\"50.0\",\"status\":\"true\"}')),
    ProductsStruct.fromSerializableMap(jsonDecode(
        '{\"product_name\":\"gee\",\"product_weight\":\"1kg\",\"product_price\":\"400.0\",\"product_discount\":\"0\",\"description\":\"Chitale Dairy gee 1kg\",\"id\":\"10\",\"mrp\":\"400.0\",\"status\":\"true\"}')),
    ProductsStruct.fromSerializableMap(jsonDecode(
        '{\"product_name\":\"Cow Milk\",\"product_weight\":\"500ml\",\"product_price\":\"28.0\",\"product_discount\":\"2\",\"description\":\"Heritage Golden Cow Milk, 500 ml Pouch\",\"id\":\"9\",\"mrp\":\"30.0\",\"status\":\"true\"}'))
  ];
  List<ProductsStruct> get product => _product;
  set product(List<ProductsStruct> value) {
    _product = value;
  }

  void addToProduct(ProductsStruct value) {
    _product.add(value);
  }

  void removeFromProduct(ProductsStruct value) {
    _product.remove(value);
  }

  void removeAtIndexFromProduct(int index) {
    _product.removeAt(index);
  }

  void updateProductAtIndex(
    int index,
    ProductsStruct Function(ProductsStruct) updateFn,
  ) {
    _product[index] = updateFn(_product[index]);
  }

  void insertAtIndexInProduct(int index, ProductsStruct value) {
    _product.insert(index, value);
  }

  List<UsersStruct> _users = [
    UsersStruct.fromSerializableMap(jsonDecode(
        '{\"user_id\":\"2\",\"user_name\":\"biresh\",\"moblie_number\":\"8308910530\",\"address\":\"88 line no 9 shahunagar jaysingpur maharastra 416101\"}')),
    UsersStruct.fromSerializableMap(jsonDecode(
        '{\"user_id\":\"3\",\"user_name\":\"mahesh\",\"moblie_number\":\"9876543210\",\"address\":\"4 guruwar path, jath maharastra 416416\"}')),
    UsersStruct.fromSerializableMap(jsonDecode(
        '{\"user_id\":\"5\",\"user_name\":\"ashish\",\"moblie_number\":\"9911223344\",\"address\":\"maruti mandir  shahapur, kolhapur maharastra 416104 \"}')),
    UsersStruct.fromSerializableMap(jsonDecode(
        '{\"user_id\":\"8\",\"user_name\":\"kuldeep\",\"moblie_number\":\"9922331144\",\"address\":\"shahu building flat no 3, lchalkarnji maharastra 416102\"}'))
  ];
  List<UsersStruct> get users => _users;
  set users(List<UsersStruct> value) {
    _users = value;
  }

  void addToUsers(UsersStruct value) {
    _users.add(value);
  }

  void removeFromUsers(UsersStruct value) {
    _users.remove(value);
  }

  void removeAtIndexFromUsers(int index) {
    _users.removeAt(index);
  }

  void updateUsersAtIndex(
    int index,
    UsersStruct Function(UsersStruct) updateFn,
  ) {
    _users[index] = updateFn(_users[index]);
  }

  void insertAtIndexInUsers(int index, UsersStruct value) {
    _users.insert(index, value);
  }
}
