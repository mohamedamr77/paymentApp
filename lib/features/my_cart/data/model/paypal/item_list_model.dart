class Item {
  String name;
  int quantity;
  String price;
  String currency;

  Item({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
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




