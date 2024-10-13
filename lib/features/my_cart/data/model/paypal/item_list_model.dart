import 'package:paymentapp/features/my_cart/data/model/paypal/shipping_address_model.dart';

class ItemListModel {
  List<OrderItemModel> items;
  ShippingAddress? shippingAddress;

  ItemListModel({
    required this.items,
    this.shippingAddress,
  });

  factory ItemListModel.fromJson(Map<String, dynamic> json) {
    var itemList = json['items'] as List;
    List<OrderItemModel> itemObjects =
        itemList.map((itemJson) => OrderItemModel.fromJson(itemJson)).toList();

    return ItemListModel(
      items: itemObjects,
      shippingAddress: ShippingAddress.fromJson(json['shipping_address']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items.map((item) => item.toJson()).toList(),
      'shipping_address': shippingAddress?.toJson(),
    };
  }

  @override
  String toString() {
    return 'Order(items: $items, shippingAddress: $shippingAddress)';
  }
}

class OrderItemModel {
  String name;
  int quantity;
  String price;
  String currency;

  OrderItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });

  factory OrderItemModel.fromJson(Map<String, dynamic> json) {
    return OrderItemModel(
      name: json['name'],
      quantity: json['quantity'],
      price: json['price'],
      currency: json['currency'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'quantity': quantity,
      'price': price,
      'currency': currency,
    };
  }

  @override
  String toString() {
    return 'Item(name: $name, quantity: $quantity, price: $price, currency: $currency)';
  }
}
