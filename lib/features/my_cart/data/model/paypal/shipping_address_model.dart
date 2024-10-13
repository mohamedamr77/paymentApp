class ShippingAddress {
  String recipientName;
  String line1;
  String line2;
  String city;
  String countryCode;
  String postalCode;
  String phone;
  String state;

  ShippingAddress({
    required this.recipientName,
    required this.line1,
    this.line2 = '',
    required this.city,
    required this.countryCode,
    required this.postalCode,
    required this.phone,
    required this.state,
  });

  factory ShippingAddress.fromJson(Map<String, dynamic> json) {
    return ShippingAddress(
      recipientName: json['recipient_name'],
      line1: json['line1'],
      line2: json['line2'] ?? '',
      city: json['city'],
      countryCode: json['country_code'],
      postalCode: json['postal_code'],
      phone: json['phone'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recipient_name': recipientName,
      'line1': line1,
      'line2': line2,
      'city': city,
      'country_code': countryCode,
      'postal_code': postalCode,
      'phone': phone,
      'state': state,
    };
  }

  @override
  String toString() {
    return 'ShippingAddress(recipientName: $recipientName, line1: $line1, city: $city, countryCode: $countryCode, postalCode: $postalCode, phone: $phone, state: $state)';
  }
}

